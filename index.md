---
layout: default
title: Zecheng Gan
description: "Assistant Professor of Computational Mathematics and Materials Science"
---

<section class="home-hero" aria-labelledby="home-title">
  <img class="portrait" src="{{ '/assets/img/ZGlogo.jpg' | relative_url }}" alt="Portrait of Zecheng Gan" width="338" height="507" fetchpriority="high">
  <div class="hero-copy">
    <p class="hero-role">Assistant Professor</p>
    <h1 id="home-title">Zecheng Gan <span class="name-chinese">干则成</span></h1>
    <p class="lede">I develop mathematical models and scalable computational methods for soft and active materials, with a focus on long-range interactions and data-driven PDE modeling.</p>
    <p class="affiliations"><a href="https://funh.hkust-gz.edu.cn/en">Advanced Materials Thrust, HKUST(GZ)</a><br><a href="https://www.math.hkust.edu.hk/">Department of Mathematics, HKUST</a></p>
    <ul class="contact-list" aria-label="Contact and external profiles">
      <li><a href="mailto:zechenggan@ust.hk">Email</a></li>
      <li><a href="https://scholar.google.com/citations?user=KHLEMGYAAAAJ&amp;hl=en&amp;oi=ao">Google Scholar</a></li>
      <li><a href="https://github.com/zcgan">GitHub</a></li>
    </ul>
  </div>
</section>

## Research interests

<ul class="home-directions">
  <li><a href="{{ '/research.html' | relative_url }}">Scalable algorithms for long-range interactions</a><span>Fast and accurate methods for electrostatic and hydrodynamic interactions in confined and heterogeneous systems.</span></li>
  <li><a href="{{ '/research.html' | relative_url }}">Physical mechanisms in polarizable and active soft matter</a><span>Modeling interaction-driven collective organization and dynamics.</span></li>
  <li><a href="{{ '/research.html' | relative_url }}">Scientific machine learning for PDEs</a><span>Operator learning, physics-informed methods, and reduced-order modeling for complex PDE systems.</span></li>
</ul>

<p class="home-opportunity">Prospective students and postdoctoral researchers interested in scientific computing, applied mathematics, soft matter, or data-driven PDEs are welcome to <a href="mailto:zechenggan@ust.hk">get in touch by email</a>.</p>

## Recent news

<ul class="news-list">
  {% for item in site.data.news limit: 8 %}<li><span class="news-date">{{ item.date }}</span><div>{{ item.text }}</div></li>{% endfor %}
</ul>
