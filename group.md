---
layout: default
title: People
description: Research Group & Mentoring
---

## Principal investigator

<div class="people-list people-list-single">
  <article class="person-row person-row-single">
    <div><h3>Zecheng Gan</h3><p>Assistant Professor, Advanced Materials Thrust at HKUST(GZ), with a joint affiliation in the Department of Mathematics at HKUST.</p></div>
  </article>
</div>

## Postdoctoral researchers

<div class="people-list">
{% for item in site.data.people.postdocs %}
  <article class="person-row{% unless item.topic %} person-row-single{% endunless %}">
    <div><h3>{{ item.name }}</h3><p>{% if item.description %}{{ item.description }}{% else %}{{ item.relationship }}, since {{ item.since }}.{% endif %}</p></div>
    {% if item.topic %}<p class="person-topic">{{ item.topic }}</p>{% endif %}
  </article>
{% endfor %}
</div>

## Doctoral students

<p class="people-scope">In addition to the group members listed below, I co-supervise numerous PhD candidates through collaborative projects, who are not individually listed here.</p>

<div class="people-list">
{% for item in site.data.people.doctoral %}
  <article class="person-row{% unless item.topic %} person-row-single{% endunless %}">
    <div><h3>{{ item.name }}</h3><p>{{ item.relationship }}, since {{ item.since }}.</p></div>
    {% if item.topic %}<p class="person-topic">{{ item.topic }}</p>{% endif %}
  </article>
{% endfor %}
</div>

## MPhil students

<div class="people-list">
{% for item in site.data.people.mphil %}
  <article class="person-row{% unless item.topic %} person-row-single{% endunless %}">
    <div><h3>{{ item.name }}</h3><p>{{ item.relationship }}, since {{ item.since }}.</p></div>
    {% if item.topic %}<p class="person-topic">{{ item.topic }}</p>{% endif %}
  </article>
{% endfor %}
</div>

## Undergraduate researchers

<div class="people-list people-list-compact">
{% for item in site.data.people.undergraduate %}
  <article class="person-row{% unless item.topic %} person-row-single{% endunless %}">
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
