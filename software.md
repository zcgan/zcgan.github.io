---
layout: default
title: Software & Impact
description: Public research code, data, and documented external adoption
---

This page lists public research software and data, followed by a documented instance of external adoption. Repository status and documentation limits are stated for each entry.

<section class="software-section">
  <h2>Research software and data</h2>
<div class="software-list">
{% for item in site.data.software %}
  {% if item.category == 'research' %}
  <article class="software-entry">
    <h2>{{ item.name }}</h2>
    <dl>
      <div><dt>Role</dt><dd>{{ item.role }}</dd></div>
      <div><dt>Purpose</dt><dd>{{ item.purpose }}</dd></div>
      <div><dt>Status</dt><dd>{{ item.status }}</dd></div>
    </dl>
    <p class="software-link"><a href="{{ item.url }}">{{ item.link_label }}</a></p>
  </article>
  {% endif %}
{% endfor %}
</div>
</section>

<section class="software-section">
  <h2>Documented external adoption</h2>
  <div class="software-list">
  {% for item in site.data.software %}
    {% if item.category == 'adoption' %}
    <article class="software-entry">
      <h2>{{ item.name }}</h2>
      <dl>
        <div><dt>Role</dt><dd>{{ item.role }}</dd></div>
        <div><dt>Purpose</dt><dd>{{ item.purpose }}</dd></div>
        <div><dt>Status</dt><dd>{{ item.status }}</dd></div>
      </dl>
      <p class="software-link"><a href="{{ item.url }}">{{ item.link_label }}</a></p>
    </article>
    {% endif %}
  {% endfor %}
  </div>
</section>
