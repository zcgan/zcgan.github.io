---
layout: default
title: Software & Impact
description: Scientific software and documented adoption
---

These entries distinguish a maintainer or co-developer role from external adoption. Repository availability and maintenance details should be checked on the linked project pages.

{% for item in site.data.software %}
## {{ item.name }}

<p><strong>Role:</strong> {{ item.role }}<br><strong>Purpose:</strong> {{ item.purpose }}<br>{% if item.url %}<a href="{{ item.url }}">Documented adoption</a>{% else %}{{ item.status }}{% endif %}</p>
{% endfor %}
