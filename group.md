---
layout: default
title: People
description: Research group and mentoring
---

The group includes researchers working on long-range interactions, soft matter, active matter, materials modeling, and data-driven PDEs. Supervision roles are stated explicitly.

## Postdoctoral researcher
{% for item in site.data.people.postdocs %}
### {{ item.name }}
{{ item.relationship }} since {{ item.since }}. {{ item.topic }}.
{% endfor %}

## Doctoral students
{% for item in site.data.people.doctoral %}
### {{ item.name }}
{{ item.relationship }} since {{ item.since }}. {{ item.topic }}.
{% endfor %}

## MPhil student
{% for item in site.data.people.mphil %}
### {{ item.name }}
{{ item.relationship }} since {{ item.since }}. {{ item.topic }}.
{% endfor %}

## Undergraduate researchers
{% for item in site.data.people.undergraduate %}
### {{ item.name }}
{{ item.relationship }} since {{ item.since }}. {{ item.topic }}.
{% endfor %}

## Alumni
{% for item in site.data.people.alumni %}
### {{ item.name }}
{{ item.relationship }}, {{ item.period }}. {{ item.outcome }}.
{% endfor %}
