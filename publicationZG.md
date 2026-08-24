---
layout: default
title: Publications
description: Publications, Accepted Manuscripts & Preprints
---

<nav class="publication-jumps" aria-label="Publication sections">
  {% assign publication_count = site.data.publications.published.size | plus: site.data.publications.accepted.size %}
  {% assign preprints = site.data.publications.preprints | where: "status", "Preprint" %}
  {% assign under_review = site.data.publications.preprints | where: "status", "Under review" %}
  <a href="#publications">Publications and accepted manuscripts ({{ publication_count }})</a>
  <a href="#book-chapters">Book chapters ({{ site.data.publications.book_chapters.size }})</a>
  <a href="#under-review">Under review ({{ under_review.size }})</a>
  <a href="#preprints">Preprints ({{ preprints.size }})</a>
</nav>

<h2 id="publications">Publications and accepted manuscripts</h2>

<p class="publication-legend"><span class="publication-order-mark" aria-hidden="true">(&alpha;-&beta;)</span> authors listed alphabetically; <sup class="publication-role-mark" aria-hidden="true">*</sup> corresponding author; <sup class="publication-role-mark" aria-hidden="true">&amp;</sup> equal contribution.</p>

{% assign publication_records = site.data.publications.published | concat: site.data.publications.accepted %}
{% assign published_by_year = publication_records | group_by: "year" %}
{% assign publication_number = 1 %}
{% assign before_joining = false %}
{% for year_group in published_by_year %}
{% if forloop.first %}
<h3 class="publication-period-heading">Since joining HKUST(GZ)</h3>
{% endif %}
{% if year_group.name <= "2021" and before_joining == false %}
<h3 class="publication-period-heading">Before joining HKUST(GZ)</h3>
{% assign before_joining = true %}
{% endif %}
<section class="publication-year" aria-labelledby="publications-{{ year_group.name }}">
  <h4 id="publications-{{ year_group.name }}">{{ year_group.name }} <span>({{ year_group.items.size }})</span></h4>
  <ol class="publication-list" start="{{ publication_number }}">
  {% for item in year_group.items %}
    <li>
      <article class="publication-entry">
        <h5>{{ item.title }}</h5>
        <p class="publication-authors">{% include publication-authors.html item=item %}</p>
        <p class="publication-venue"><em>{{ item.venue }}</em>, {{ item.year }}.{% if item.status %} <strong class="publication-note">{{ item.status }}.</strong>{% endif %}{% if item.note %} <span class="publication-note">{{ item.note }}</span>{% endif %}</p>
        <p class="publication-links">{% if item.doi %}<a href="{% if item.article_url %}{{ item.article_url }}{% else %}https://doi.org/{{ item.doi }}{% endif %}">DOI</a>{% endif %}{% if item.doi and item.pdf %}<span aria-hidden="true">|</span>{% endif %}{% if item.pdf %}<a href="{{ item.pdf | relative_url }}">PDF</a>{% endif %}</p>
      </article>
    </li>
  {% endfor %}
  </ol>
</section>
{% assign publication_number = publication_number | plus: year_group.items.size %}
{% endfor %}

<h2 id="book-chapters">Book chapters</h2>

<ol class="publication-list publication-list-short">
{% for item in site.data.publications.book_chapters %}
  <li>
    <article class="publication-entry">
      <h3>{{ item.title }}</h3>
      <p class="publication-authors">{% include publication-authors.html item=item %}</p>
      <p class="publication-venue"><em>Book chapter</em>{% if item.editors %}, edited by {{ item.editors }}{% endif %}. <strong>{{ item.status }}.</strong>{% if item.context %} <span class="publication-context">{{ item.context }}</span>{% endif %}</p>
      <p class="publication-links"><a href="{{ item.pdf | relative_url }}">PDF</a></p>
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
