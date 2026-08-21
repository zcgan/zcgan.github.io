---
layout: default
title: Zecheng Gan
description: "Assistant Professor of Computational Mathematics and Materials Science"
---

<section class="home-hero" aria-labelledby="home-title">
  <img class="portrait" src="{{ '/assets/img/ZGlogo.jpg' | relative_url }}" alt="Portrait of Zecheng Gan">
  <div>
    <p class="eyebrow">Assistant Professor</p>
    <h1 id="home-title">Zecheng Gan <span class="name-chinese">干则成</span></h1>
    <p class="lede">I develop mathematical models and scalable numerical methods for long-range interactions and collective phenomena in soft and active materials, with emerging work in data-driven PDE computation.</p>
    <p class="affiliations"><a href="https://funh.hkust-gz.edu.cn/en">Advanced Materials Thrust, HKUST(GZ)</a><br><a href="https://www.math.hkust.edu.hk/">Department of Mathematics, HKUST</a></p>
    <ul class="contact-list" aria-label="Contact and external profiles">
      <li><a href="{{ '/research.html' | relative_url }}">Research</a></li>
      <li><a href="{{ '/publicationZG.html' | relative_url }}">Publications</a></li>
      <li><a href="https://scholar.google.com/citations?user=KHLEMGYAAAAJ&amp;hl=en&amp;oi=ao">Google Scholar</a></li>
      <li><a href="https://github.com/zcgan">GitHub</a></li>
      <li><a href="mailto:zechenggan@ust.hk">Email</a></li>
    </ul>
  </div>
</section>

## Research programs

<p class="section-intro">The group combines numerical analysis with physically specific models. Two programs are established; data-driven PDE computation is an emerging direction.</p>

<div class="research-themes">
  <section class="research-theme"><h3>Long-range interactions</h3><p><strong>Question:</strong> How can particle simulations retain electrostatic accuracy near dielectric interfaces? <strong>Approach:</strong> Ewald, random-batch, and boundary-integral methods. <strong>Evidence:</strong> quasi-2D algorithms and error analysis for confined Coulomb systems.</p></section>
  <section class="research-theme"><h3>Soft and active materials</h3><p><strong>Question:</strong> Which interactions produce assembly, symmetry breaking, and collective motion? <strong>Approach:</strong> electrostatic theory and particle simulations. <strong>Evidence:</strong> studies of polarizable spheres, dipolar columns, and autochemotactic droplets.</p></section>
  <section class="research-theme"><h3>Data-driven PDEs</h3><p><strong>Question:</strong> How can data-driven models learn dynamics while respecting PDE structure? <strong>Approach:</strong> operator learning and reduced-order methods. <strong>Status:</strong> an emerging program supported mainly by preprints and under-review work.</p></section>
</div>

<p class="archive-link"><a href="{{ '/research.html' | relative_url }}">Research questions, methods, and representative papers</a></p>

## Selected contributions

<ul class="selected-publications">
  <li><span class="publication-meta">2026<br>JCP</span><div><strong>Dipolar cohesion in confined columns</strong><p>Explains cohesive behavior in densely packed confined dipolar columns through a particle-level electrostatic model. <a href="{{ '/科研论文成果汇总/published/2026_JCP_ConfinedDipoleColumns_DuanGanMohrbachChanMessina.pdf' | relative_url }}">Paper</a></p></div></li>
  <li><span class="publication-meta">2025<br>SISC</span><div><strong>Random batch Ewald for dielectric confinement</strong><p>Develops a random-batch Ewald method for quasi-2D Coulomb simulations with dielectric interfaces. <a href="{{ '/科研论文成果汇总/published/2025_SISC_RBE2D_GanGaoLiangXu.pdf' | relative_url }}">Paper</a></p></div></li>
  <li><span class="publication-meta">2025<br>JCP</span><div><strong>Fast quasi-2D Coulomb simulation</strong><p>Provides a fast algorithm for long-range electrostatics in quasi-two-dimensional geometries. <a href="{{ '/科研论文成果汇总/published/2025_JCompPhys_Q2D_GanGaoLiangXu.pdf' | relative_url }}">Paper</a></p></div></li>
  <li><span class="publication-meta">2025<br>Soft Matter</span><div><strong>Like-charge attraction in polarizable media</strong><p>Connects effective-dipole analysis with the interactions of charged dielectric spheres. The article was selected as a featured journal cover. <a href="{{ '/科研论文成果汇总/published/2025_LCA_SoftMatter_DuanGanChan.pdf' | relative_url }}">Paper</a></p></div></li>
  <li><span class="publication-meta">2019<br>JCP</span><div><strong>Hybrid simulation of dielectric spheres</strong><p>Introduces an efficient hybrid method for charged dielectric spheres. The paper was selected for the 2019 JCP Editors’ Choice. <a href="{{ '/assets/files/journal/GAN-jcp-2019.pdf' | relative_url }}">Paper</a></p></div></li>
</ul>

<p class="archive-link"><a href="{{ '/publicationZG.html' | relative_url }}">Complete publications, including accepted papers and preprints</a></p>

## Research environment

<div class="home-split">
  <section><h3>Evidence of current activity</h3><ul><li>PI on competitive NSFC, Guangdong, and Guangzhou research grants completed during 2023-2025.</li><li>Research impact includes adoption of quasi-2D electrostatic error analysis in <a href="https://github.com/lammps/lammps/pull/4939">LAMMPS PR #4939</a>.</li><li>Current mentoring includes doctoral, MPhil, undergraduate, and postdoctoral researchers across mathematical modeling, soft matter, and scientific machine learning.</li></ul></section>
  <aside class="opportunities" aria-labelledby="opportunities-title"><h3 id="opportunities-title">Working with the group</h3><p>I welcome inquiries from prospective students and postdoctoral researchers with interests in scientific computing, applied mathematics, soft matter, or data-driven PDEs.</p><p><a href="mailto:zechenggan@ust.hk">Email me</a> with a brief introduction and your research interests.</p></aside>
</div>

## Recent news

<ul class="news-list">
  {% for item in site.data.news limit: 5 %}<li><span class="news-date">{{ item.date }}</span><div>{{ item.text }}</div></li>{% endfor %}
</ul>
