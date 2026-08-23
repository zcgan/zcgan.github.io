#!/usr/bin/env ruby
# encoding: UTF-8
# frozen_string_literal: true

require "yaml"

path = File.expand_path("../_data/publications.yml", __dir__)
raw = File.read(path, encoding: "UTF-8")

entry_keys = {}
raw.each_line.with_index(1) do |line, line_number|
  if line.match?(/^  - /)
    entry_keys = {}
  elsif (match = line.match(/^    ([a-z_]+):/))
    key = match[1]
    abort "Duplicate key '#{key}' near line #{line_number}" if entry_keys[key]
    entry_keys[key] = true
  end
end

records = YAML.safe_load(raw, aliases: false)
required = {
  "published" => %w[id authors title venue year pdf],
  "accepted" => %w[id authors title venue year status pdf],
  "book_chapters" => %w[id authors title status pdf],
  "preprints" => %w[id authors title status pdf]
}

ids = []
titles = []
required.each do |group, fields|
  records.fetch(group).each do |record|
    missing = fields.reject { |field| record.key?(field) && !record[field].to_s.empty? }
    abort "#{group}: missing #{missing.join(', ')} for #{record['title'] || 'untitled record'}" unless missing.empty?
    ids << record.fetch("id")
    titles << record.fetch("title")
  end
end

duplicates = ids.group_by(&:itself).select { |_value, values| values.size > 1 }.keys
abort "Duplicate publication IDs: #{duplicates.join(', ')}" unless duplicates.empty?

duplicates = titles.group_by(&:itself).select { |_value, values| values.size > 1 }.keys
abort "Duplicate publication titles: #{duplicates.join(' | ')}" unless duplicates.empty?

by_id = records.values.flatten.each_with_object({}) { |record, index| index[record.fetch("id")] = record }

records.values.flatten.each do |record|
  author_order = record["author_order"]
  unless author_order.nil? || author_order == "alphabetical"
    abort "Unknown author order '#{author_order}' for #{record.fetch('id')}"
  end

  %w[corresponding_authors equal_contributors].each do |field|
    next unless record.key?(field)

    authors = record.fetch(field)
    abort "#{field} must be an array for #{record.fetch('id')}" unless authors.is_a?(Array)
    authors.each do |author|
      abort "#{field} contains an unknown author '#{author}' for #{record.fetch('id')}" unless record.fetch("authors").include?(author)
    end
  end
end

research = File.read(File.expand_path("../research.md", __dir__), encoding: "UTF-8")
research_ids = research.scan(/publication-evidence\.html id="([^"]+)"/).flatten
missing_research_ids = research_ids.reject { |id| by_id.key?(id) }
abort "Research references unknown publication IDs: #{missing_research_ids.join(', ')}" unless missing_research_ids.empty?

inline_reference_ids = Dir[File.expand_path("../*.md", __dir__)].flat_map do |page|
  File.read(page, encoding: "UTF-8").scan(/publication-title\.html id="([^"]+)"/).flatten
end
missing_inline_ids = inline_reference_ids.reject { |id| by_id.key?(id) }
abort "Inline references unknown publication IDs: #{missing_inline_ids.join(', ')}" unless missing_inline_ids.empty?

news = YAML.safe_load(File.read(File.expand_path("../_data/news.yml", __dir__), encoding: "UTF-8"), aliases: false)
news.each do |item|
  id = item["publication_id"]
  record = by_id[id]
  abort "News item references unknown publication ID: #{id}" unless record
  abort "News item references a preprint: #{id}" if records.fetch("preprints").include?(record)
  abort "News title does not match canonical title: #{id}" unless item.fetch("text").include?(record.fetch("title"))
end

puts "Publication and title audit passed: #{ids.size} records, #{research_ids.size} research references, #{inline_reference_ids.size} inline references, #{news.size} news items."
