---
layout: default
title: Research
description: Scientific computing for long-range interactions, soft matter, and machine learning
---

I develop mathematical models and scalable computational methods for soft and active materials. My work connects numerical analysis with physically specific models of long-range interactions, collective dynamics, and scientific machine learning.

<section class="research-detail">
  <h2>Scalable algorithms for long-range interactions</h2>

  <p>Electrostatic and hydrodynamic calculations become more difficult in confined, partly periodic, and heterogeneous systems. We develop Ewald-type decompositions, random-batch methods, boundary-integral formulations, and hybrid solvers for these settings.</p>

  <p>We study parameter-dependent error, computational cost, and the treatment of boundary and interface effects.</p>

  <h3>Selected publications</h3>
  <ul class="evidence-links">
    {% include publication-evidence.html id="ewald-error-estimates" %}
    {% include publication-evidence.html id="random-batch-ewald" %}
    {% include publication-evidence.html id="fast-quasi-2d" %}
    {% include publication-evidence.html id="quasi-ewald-splitting" %}
  </ul>

  <h3>Current questions</h3>
  <p class="research-next">Error control under stronger dielectric contrast, scalable solvers for confined geometries, and links between electrostatic and hydrodynamic algorithms.</p>
</section>

<section class="research-detail">
  <h2>Physical mechanisms in soft and active matter systems</h2>

  <p>We model how dielectric contrast, confinement, activity, and memory shape attraction, packing, broken symmetry, and collective motion.</p>

  <p>We test numerical observations against electrostatic theory and reduced physical models, and specify the regime for each explanation.</p>

  <h3>Selected publications</h3>
  <ul class="evidence-links">
    {% include publication-evidence.html id="effective-dipole-analysis" %}
    {% include publication-evidence.html id="like-charge-attraction" %}
    {% include publication-evidence.html id="negative-dielectric-confinement" %}
    {% include publication-evidence.html id="dipolar-cohesion-columns" %}
    {% include publication-evidence.html id="autochemotactic-droplets" %}
  </ul>

  <h3>Current questions</h3>
  <p class="research-next">Contact interactions between asymmetric polarizable particles, memory in chemotactic motion, and the relation between confinement, cohesion, and helicity.</p>
</section>

<section class="research-detail">
  <h2>Machine learning for PDEs and materials science</h2>

  <p>We study operator learning, physics-informed methods, and reduced-order models for complex PDE systems. Current work covers pattern dynamics, nonlinear fluid evolution, parametrized PDEs, and nearly touching plasmonic structures. Machine-learning methods for materials science form part of this research direction.</p>

  <h3>Selected publications</h3>
  <ul class="evidence-links">
    {% include publication-evidence.html id="lsr-net-fluid" %}
    {% include publication-evidence.html id="lsr-net-manifolds" %}
    {% include publication-evidence.html id="spectral-subspace-pod" %}
    {% include publication-evidence.html id="rcip-reduced-basis" %}
  </ul>

  <h3>Current questions</h3>
  <p class="research-next">Generalization outside the training regime, error growth over time, and comparisons with standard numerical baselines.</p>
</section>

<p class="archive-link"><a href="{{ '/publicationZG.html' | relative_url }}">Complete publication record</a></p>
