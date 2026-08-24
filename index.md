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
    <p class="affiliations"><a href="https://funh.hkust-gz.edu.cn/en">Advanced Materials Thrust, HKUST(GZ)</a><br><a href="https://www.math.hkust.edu.hk/">Department of Mathematics, HKUST</a></p>
    <ul class="contact-list" aria-label="Contact and external profiles">
      <li><a href="mailto:zechenggan@ust.hk">Email</a></li>
      <li><a href="https://scholar.google.com/citations?user=KHLEMGYAAAAJ&amp;hl=en&amp;oi=ao">Google Scholar</a></li>
      <li><a href="https://github.com/zcgan">GitHub</a></li>
    </ul>
  </div>
  <aside class="home-epigraph" aria-label="Research epigraph">
    <blockquote>
      <p>“What I cannot create, I do not understand.”</p>
      <cite>Richard P. Feynman</cite>
    </blockquote>
    <p class="home-tagline">Understanding complex physical systems through mathematics, computation, and learning.</p>
  </aside>
  <p class="lede">I develop mathematical models and scalable computational methods for soft and active materials, with a focus on long-range interactions and scientific machine learning methods.</p>
</section>

## Research interests

<ul class="home-directions">
  <li><a href="{{ '/research.html' | relative_url }}">Scalable algorithms for long-range interactions</a><span>Fast and accurate methods for electrostatic and hydrodynamic interactions in confined and heterogeneous systems.</span></li>
  <li><a href="{{ '/research.html' | relative_url }}">Physical mechanisms in soft and active matter systems</a><span>Modeling interaction-driven collective organization and dynamics.</span></li>
  <li><a href="{{ '/research.html' | relative_url }}">Machine learning for PDEs and materials science</a><span>Operator learning, physics-informed methods, machine-learning potentials, and AI-assisted materials discovery.</span></li>
</ul>

<p class="home-opportunity">Prospective students and postdoctoral researchers are welcome to <a href="mailto:zechenggan@ust.hk">get in touch by email</a>. I particularly welcome highly self-motivated, hardworking, and intellectually curious candidates who enjoy independent thinking and exploring new research problems.</p>

## Short bio

<ul class="profile-list home-bio">
  <li><span class="profile-status">2021-present</span><div><strong>Assistant Professor</strong>, Advanced Materials Thrust, HKUST(GZ).</div></li>
  <li><span class="profile-status">2021-present</span><div><strong>Affiliate Assistant Professor</strong>, Department of Mathematics, HKUST.</div></li>
  <li><span class="profile-status">2019-2021</span><div><strong>Postdoctoral Associate</strong>, Courant Institute of Mathematical Sciences, New York University. Advisor: Aleksandar Donev.</div></li>
  <li><span class="profile-status">2016-2019</span><div><strong>Postdoc Assistant Professor</strong>, Department of Mathematics, University of Michigan. Advisors: Robert Krasny and Weihua Geng.</div></li>
  <li><span class="profile-status">2016</span><div><strong>Ph.D. in Mathematics</strong>, Shanghai Jiao Tong University. Advisor: Zhenli Xu.</div></li>
  <li><span class="profile-status">2010</span><div><strong>B.S. in Mechanical Engineering</strong>, Shanghai Jiao Tong University.</div></li>
</ul>

## Recent news

<ul class="news-list">
  {% for item in site.data.news limit: 10 %}<li><span class="news-date">{{ item.date }}</span><div>{{ item.text }}</div></li>{% endfor %}
</ul>
