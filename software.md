---
layout: default
title: Software
description: Open-source Research Software, Data & Community Use
---

This page presents publicly available research software and data, together with documented examples of external use. Each entry includes information on repository status and the scope of available documentation.

<section class="software-section">
  <h2>Research software and data</h2>
<div class="software-list">
{% for item in site.data.software %}
  {% if item.category == 'research' %}
  <article class="software-entry">
    <h2>{{ item.name }}</h2>
    <dl>
      <div><dt>Purpose</dt><dd>{{ item.purpose }}</dd></div>
      <div><dt>Status</dt><dd>{{ item.status }}</dd></div>
    </dl>
    <p class="software-link">
      {% if item.links %}
        {% for link in item.links %}
        <a href="{{ link.url }}">{{ link.label }}</a>{% unless forloop.last %}<span aria-hidden="true"> · </span>{% endunless %}
        {% endfor %}
      {% else %}
      <a href="{{ item.url }}">{{ item.link_label }}</a>
      {% endif %}
    </p>
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
        <div><dt>Purpose</dt><dd>{{ item.purpose }}</dd></div>
        <div><dt>Status</dt><dd>{{ item.status }}</dd></div>
      </dl>
      <p class="software-link">
        {% if item.links %}
          {% for link in item.links %}
          <a href="{{ link.url }}">{{ link.label }}</a>{% unless forloop.last %}<span aria-hidden="true"> · </span>{% endunless %}
          {% endfor %}
        {% else %}
        <a href="{{ item.url }}">{{ item.link_label }}</a>
        {% endif %}
      </p>
    </article>
    {% endif %}
  {% endfor %}
  </div>
</section>
