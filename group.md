---
layout: default
title: People
description: Research group and mentoring relationships
---

The group works across scientific computing, electrostatics, soft and active matter, materials modeling, and data-driven PDEs. Each entry states the supervision relationship rather than implying sole supervision.

Prospective students and postdoctoral researchers interested in these areas are welcome to <a href="mailto:zechenggan@ust.hk">get in touch by email</a>.

## Principal investigator

<div class="people-list people-list-single">
  <article class="person-row">
    <div><h3>Zecheng Gan</h3><p>Assistant Professor, Advanced Materials Thrust at HKUST(GZ), with a joint affiliation in the Department of Mathematics at HKUST.</p></div>
    <p class="person-topic">Computational mathematics, long-range interactions, and soft and active materials</p>
  </article>
</div>

## Postdoctoral researcher

<div class="people-list">
{% for item in site.data.people.postdocs %}
  <article class="person-row">
    <div><h3>{{ item.name }}</h3><p>{{ item.relationship }}, since {{ item.since }}.</p></div>
    {% if item.topic %}<p class="person-topic">{{ item.topic }}</p>{% endif %}
  </article>
{% endfor %}
</div>

## Doctoral students

<div class="people-list">
{% for item in site.data.people.doctoral %}
  <article class="person-row">
    <div><h3>{{ item.name }}</h3><p>{{ item.relationship }}, since {{ item.since }}.</p></div>
    {% if item.topic %}<p class="person-topic">{{ item.topic }}</p>{% endif %}
  </article>
{% endfor %}
</div>

## MPhil student

<div class="people-list">
{% for item in site.data.people.mphil %}
  <article class="person-row">
    <div><h3>{{ item.name }}</h3><p>{{ item.relationship }}, since {{ item.since }}.</p></div>
    {% if item.topic %}<p class="person-topic">{{ item.topic }}</p>{% endif %}
  </article>
{% endfor %}
</div>

## Undergraduate researchers

<div class="people-list people-list-compact">
{% for item in site.data.people.undergraduate %}
  <article class="person-row">
    <div><h3>{{ item.name }}</h3><p>{{ item.relationship }}, since {{ item.since }}.</p></div>
    {% if item.topic %}<p class="person-topic">{{ item.topic }}</p>{% endif %}
  </article>
{% endfor %}
</div>

## Alumni

<div class="people-list">
{% for item in site.data.people.alumni %}
  <article class="person-row">
    <div><h3>{{ item.name }}</h3><p>{{ item.relationship }}, {{ item.period }}.</p></div>
    <p class="person-topic">{{ item.outcome }}</p>
  </article>
{% endfor %}
</div>
