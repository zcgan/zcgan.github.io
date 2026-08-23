---
layout: default
title: Publications
description: Publications, Accepted Manuscripts & Preprints
---

This record separates published, accepted, preprint, and under-review work. Publisher links appear where a DOI is available. PDFs are provided for published, accepted, and under-review manuscripts; other preprints are listed without PDF links. Citation data are available on <a href="https://scholar.google.com/citations?user=KHLEMGYAAAAJ&amp;hl=en&amp;oi=ao">Google Scholar</a>.

<p class="publication-legend"><span class="publication-order-mark" aria-hidden="true">(&alpha;-&beta;)</span> authors listed alphabetically; <sup class="publication-role-mark" aria-hidden="true">*</sup> corresponding author; <sup class="publication-role-mark" aria-hidden="true">&amp;</sup> equal contribution.</p>

<nav class="publication-jumps" aria-label="Publication sections">
  {% assign publication_count = site.data.publications.published.size | plus: site.data.publications.accepted.size %}
  {% assign preprints = site.data.publications.preprints | where: "status", "Preprint" %}
  {% assign under_review = site.data.publications.preprints | where: "status", "Under review" %}
  <a href="#publications">Publications and accepted manuscripts ({{ publication_count }})</a>
  <a href="#preprints">Preprints ({{ preprints.size }})</a>
  <a href="#under-review">Under review ({{ under_review.size }})</a>
</nav>

<h2 id="publications">Publications and accepted manuscripts</h2>

{% assign publication_records = site.data.publications.published | concat: site.data.publications.accepted %}
{% assign published_by_year = publication_records | group_by: "year" %}
{% assign publication_number = 1 %}
{% for year_group in published_by_year %}
<section class="publication-year" aria-labelledby="publications-{{ year_group.name }}">
  <h3 id="publications-{{ year_group.name }}">{{ year_group.name }} <span>({{ year_group.items.size }})</span></h3>
  <ol class="publication-list" start="{{ publication_number }}">
  {% for item in year_group.items %}
    <li>
      <article class="publication-entry">
        <h4>{{ item.title }}</h4>
        <p class="publication-authors">{% include publication-authors.html item=item %}</p>
        <p class="publication-venue"><em>{{ item.venue }}</em>, {{ item.year }}.{% if item.status %} <strong class="publication-note">{{ item.status }}.</strong>{% endif %}{% if item.note %} <span class="publication-note">{{ item.note }}</span>{% endif %}</p>
        <p class="publication-links">{% if item.doi %}<a href="https://doi.org/{{ item.doi }}">DOI</a>{% endif %}{% if item.doi and item.pdf %}<span aria-hidden="true">|</span>{% endif %}{% if item.pdf %}<a href="{{ item.pdf | relative_url }}">PDF</a>{% endif %}</p>
      </article>
    </li>
  {% endfor %}
  </ol>
</section>
{% assign publication_number = publication_number | plus: year_group.items.size %}
{% endfor %}

<h2 id="preprints">Preprints</h2>

<ol class="publication-list publication-list-short">
{% for item in preprints %}
  <li>
    <article class="publication-entry">
      <h3>{{ item.title }}</h3>
      <p class="publication-authors">{% include publication-authors.html item=item %}</p>
      <p class="publication-venue"><strong>{{ item.status }}.</strong></p>
    </article>
  </li>
{% endfor %}
</ol>

<h2 id="under-review">Under review</h2>

<ol class="publication-list publication-list-short">
{% for item in under_review %}
  <li>
    <article class="publication-entry">
      <h3>{{ item.title }}</h3>
      <p class="publication-authors">{% include publication-authors.html item=item %}</p>
      <p class="publication-venue"><strong>{{ item.status }}.</strong></p>
      <p class="publication-links"><a href="{{ item.pdf | relative_url }}">PDF</a></p>
    </article>
  </li>
{% endfor %}
</ol>
