---
layout: default
title: Publications
description: Published papers, accepted work, and public preprints
---

<p>Bibliography is maintained from one site data file. Links lead to publisher DOI pages when verified and to the public PDF stored on this site.</p>

<p class="section-intro">Author-role marks are used only where verified in the paper or CV. Some papers state alphabetical author order, equal contribution, or corresponding authorship in their published version.</p>

## Peer-reviewed and published

<ol class="publication-list">
{% for item in site.data.publications.published %}
  <li><strong>{{ item.title }}</strong><br>{{ item.authors }}<br><em>{{ item.venue }}</em>, {{ item.year }}.{% if item.note %} {{ item.note }}{% endif %}<br>{% if item.doi %}<a href="https://doi.org/{{ item.doi }}">DOI</a>{% endif %}{% if item.doi and item.pdf %} · {% endif %}{% if item.pdf %}<a href="{{ item.pdf | relative_url }}">PDF</a>{% endif %}</li>
{% endfor %}
</ol>

## Accepted

<ol class="publication-list">
{% for item in site.data.publications.accepted %}
  <li><strong>{{ item.title }}</strong><br>{{ item.authors }}<br><em>{{ item.venue }}</em>, {{ item.year }}. {{ item.status }}. <a href="{{ item.pdf | relative_url }}">PDF</a></li>
{% endfor %}
</ol>

## Preprints and manuscripts under review

<ol class="publication-list">
{% for item in site.data.publications.preprints %}
  <li><strong>{{ item.title }}</strong><br>{{ item.authors }}<br>{{ item.status }}. <a href="{{ item.pdf | relative_url }}">PDF</a></li>
{% endfor %}
</ol>
