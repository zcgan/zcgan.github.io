---
layout: default
title: Publications
description: Published papers, accepted work, and public preprints
---

The record below separates published, accepted, and under-review work. Publisher links are included where a DOI has been verified; public manuscripts are provided as PDFs.

<p class="section-intro">Notes on alphabetical order, equal contribution, or corresponding authorship appear only when they are stated in the paper or source CV. Current citation data are available on <a href="https://scholar.google.com/citations?user=KHLEMGYAAAAJ&amp;hl=en&amp;oi=ao">Google Scholar</a>.</p>

<h2 id="published">Peer-reviewed and published</h2>

<ol class="publication-list">
{% for item in site.data.publications.published %}
  <li>
    <article class="publication-entry">
      <h3>{{ item.title }}</h3>
      <p class="publication-authors">{{ item.authors }}</p>
      <p class="publication-venue"><em>{{ item.venue }}</em>, {{ item.year }}.{% if item.note %} <span class="publication-note">{{ item.note }}</span>{% endif %}</p>
      <p class="publication-links">{% if item.doi %}<a href="https://doi.org/{{ item.doi }}">DOI</a>{% endif %}{% if item.doi and item.pdf %}<span aria-hidden="true">|</span>{% endif %}{% if item.pdf %}<a href="{{ item.pdf | relative_url }}">PDF</a>{% endif %}</p>
    </article>
  </li>
{% endfor %}
</ol>

<h2 id="accepted">Accepted</h2>

<ol class="publication-list publication-list-short">
{% for item in site.data.publications.accepted %}
  <li>
    <article class="publication-entry">
      <h3>{{ item.title }}</h3>
      <p class="publication-authors">{{ item.authors }}</p>
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
      <p class="publication-authors">{{ item.authors }}</p>
      <p class="publication-venue"><strong>{{ item.status }}.</strong></p>
      <p class="publication-links"><a href="{{ item.pdf | relative_url }}">PDF</a></p>
    </article>
  </li>
{% endfor %}
</ol>
