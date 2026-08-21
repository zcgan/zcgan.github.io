---
layout: default
title: Software & Impact
description: Public research code, data, and documented external adoption
---

Research software varies in scope and maintenance. The entries below distinguish group-developed code and data from external adoption, and they state limitations where the public documentation is incomplete.

<div class="software-list">
{% for item in site.data.software %}
  <article class="software-entry">
    <h2>{{ item.name }}</h2>
    <dl>
      <div><dt>Role</dt><dd>{{ item.role }}</dd></div>
      <div><dt>Purpose</dt><dd>{{ item.purpose }}</dd></div>
      <div><dt>Status</dt><dd>{{ item.status }}</dd></div>
    </dl>
    <p class="software-link"><a href="{{ item.url }}">{{ item.link_label }}</a></p>
  </article>
{% endfor %}
</div>
