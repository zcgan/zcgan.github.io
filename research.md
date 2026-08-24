---
layout: default
title: Research
description: Mathematical modeling, scientific computing, and machine learning for physical and materials systems.
---

<section class="research-detail">
  <h2>Scalable algorithms for long-range interactions</h2>

  <details class="research-overview">
    <summary>Research overview and future directions</summary>
    <div class="research-overview-content">
      <p>Electrostatic and hydrodynamic computations pose significant challenges in confined, partially periodic, and heterogeneous systems. We develop Ewald-type decompositions, random-batch algorithms, boundary-integral formulations, and hybrid solvers tailored to these complex settings. Our work emphasizes rigorous error analysis, computational efficiency, and the accurate treatment of boundary and interface effects.</p>

      <h3>Future directions</h3>
      <p class="research-next">Robust error control in high-contrast dielectric environments, scalable algorithms for strongly confined and heterogeneous geometries, and unified computational frameworks for electrostatic and hydrodynamic interactions.</p>
    </div>
  </details>

  <h3>Selected publications</h3>
  <ul class="evidence-links">
    {% include publication-evidence.html id="quasi-ewald-splitting" %}
    {% include publication-evidence.html id="ewald-error-estimates" %}
    {% include publication-evidence.html id="random-batch-ewald" %}
    {% include publication-evidence.html id="fast-quasi-2d" %}
    {% include publication-evidence.html id="confined-hydrodynamic-interactions" %}
  </ul>
</section>

<section class="research-detail">
  <h2>Physical mechanisms in soft and active matter systems</h2>

  <details class="research-overview">
    <summary>Research overview and future directions</summary>
    <div class="research-overview-content">
      <p>We model how dielectric contrast, confinement, activity, and memory govern attraction, packing, symmetry breaking, and collective motion. We combine continuum and statistical-mechanical theories with reduced models to interpret numerical observations and identify the regimes in which different mechanisms dominate.</p>

      <h3>Future directions</h3>
      <p class="research-next">Emergent interactions and competing mechanisms in asymmetric polarizable systems, the roles of memory and hydrodynamic coupling in collective active dynamics, and how confinement and cohesion drive symmetry breaking and chiral or helical organization.</p>
    </div>
  </details>

  <h3>Selected publications</h3>
  <ul class="evidence-links">
    {% include publication-evidence.html id="coulombic-contact-asymmetry" %}
    {% include publication-evidence.html id="dipolar-cohesion-columns" %}
    {% include publication-evidence.html id="effective-dipole-analysis" %}
    {% include publication-evidence.html id="like-charge-attraction" %}
    {% include publication-evidence.html id="negative-dielectric-confinement" %}
    {% include publication-evidence.html id="autochemotactic-droplets" %}
  </ul>
</section>

<section class="research-detail">
  <h2>Machine learning for PDEs and materials science</h2>

  <details class="research-overview">
    <summary>Research overview and future directions</summary>
    <div class="research-overview-content">
      <p>We develop scientific machine-learning and reduced-order methods for complex physical systems, with a focus on operator learning, physics-informed computation, and model reduction for PDEs. Current applications span pattern formation, nonlinear fluid dynamics, parametrized PDEs, and strongly coupled plasmonic systems. We also extend these approaches to materials science through machine-learning potentials and AI-assisted materials modeling and discovery.</p>

      <h3>Future directions</h3>
      <p class="research-next">Out-of-distribution generalization, long-time stability and error accumulation, and the accuracy–efficiency tradeoffs between learning-based and classical numerical methods.</p>
    </div>
  </details>

  <h3>Selected publications</h3>
  <ul class="evidence-links">
    {% include publication-evidence.html id="lsr-net-fluid" %}
    {% include publication-evidence.html id="lsr-net-manifolds" %}
    {% include publication-evidence.html id="lsr-net-early-snapshots" %}
    {% include publication-evidence.html id="spectral-subspace-pod" %}
    {% include publication-evidence.html id="rcip-reduced-basis" %}
  </ul>
</section>

<p class="archive-link"><a href="{{ '/publicationZG.html' | relative_url }}">Complete publication record</a></p>
