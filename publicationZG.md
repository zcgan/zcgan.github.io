---
layout: default
title: Publications
description: Published papers, accepted work, and current manuscripts
---

This record separates published, accepted, preprint, and under-review work. Publisher links appear where a DOI is available. PDFs are provided for published, accepted, and under-review manuscripts; other preprints are listed without PDF links. Citation data are available on <a href="https://scholar.google.com/citations?user=KHLEMGYAAAAJ&amp;hl=en&amp;oi=ao">Google Scholar</a>.

<nav class="publication-jumps" aria-label="Publication sections">
  <a href="#published">Published ({{ site.data.publications.published.size }})</a>
  <a href="#accepted">Accepted ({{ site.data.publications.accepted.size }})</a>
  <a href="#preprints">Preprints and under review ({{ site.data.publications.preprints.size }})</a>
</nav>

<h2 id="published">Peer-reviewed and published</h2>

{% assign published_by_year = site.data.publications.published | group_by: "year" %}
{% assign publication_number = 1 %}
{% for year_group in published_by_year %}
<section class="publication-year" aria-labelledby="publications-{{ year_group.name }}">
  <h3 id="publications-{{ year_group.name }}">{{ year_group.name }} <span>({{ year_group.items.size }})</span></h3>
  <ol class="publication-list" start="{{ publication_number }}">
  {% for item in year_group.items %}
    <li>
      <article class="publication-entry">
        <h4>{{ item.title }}</h4>
        <p class="publication-authors">{{ item.authors | replace: 'Z. Gan', '<strong class="publication-self">Z. Gan</strong>' }}</p>
        <p class="publication-venue"><em>{{ item.venue }}</em>, {{ item.year }}.{% if item.note %} <span class="publication-note">{{ item.note }}</span>{% endif %}</p>
        <p class="publication-links">{% if item.doi %}<a href="https://doi.org/{{ item.doi }}">DOI</a>{% endif %}{% if item.doi and item.pdf %}<span aria-hidden="true">|</span>{% endif %}{% if item.pdf %}<a href="{{ item.pdf | relative_url }}">PDF</a>{% endif %}</p>
      </article>
    </li>
  {% endfor %}
  </ol>
</section>
{% assign publication_number = publication_number | plus: year_group.items.size %}
{% endfor %}

<h2 id="accepted">Accepted</h2>

<ol class="publication-list publication-list-short">
{% for item in site.data.publications.accepted %}
  <li>
    <article class="publication-entry">
      <h3>{{ item.title }}</h3>
      <p class="publication-authors">{{ item.authors | replace: 'Z. Gan', '<strong class="publication-self">Z. Gan</strong>' }}</p>
      <p class="publication-venue"><em>{{ item.venue }}</em>, {{ item.year }}. <strong>{{ item.status }}.</strong></p>
      <p class="publication-links"><a href="{{ item.pdf | relative_url }}">PDF</a></p>
    </article>
  </li>
{% endfor %}
</ol>

<h2 id="preprints">Preprints and manuscripts under review</h2>

<ol class="publication-list publication-list-short">
{% for item in site.data.publications.preprints %}
  <li>
    <article class="publication-entry">
      <h3>{{ item.title }}</h3>
      <p class="publication-authors">{{ item.authors | replace: 'Z. Gan', '<strong class="publication-self">Z. Gan</strong>' }}</p>
      <p class="publication-venue"><strong>{{ item.status }}.</strong></p>
      {% unless item.status == "Preprint" %}
      <p class="publication-links"><a href="{{ item.pdf | relative_url }}">PDF</a></p>
      {% endunless %}
    </article>
  </li>
{% endfor %}
</ol>
