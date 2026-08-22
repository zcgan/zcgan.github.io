---
layout: default
title: Research
description: Mathematical models and numerical methods for interacting particle systems
---

My research starts from a common difficulty: long-range interactions are expensive to compute, but simplifying them too aggressively can remove the effects that govern the material. The group works between numerical analysis and physically specific models across three connected directions.

<section class="research-detail">
  <h2>Scalable simulation of long-range interactions</h2>

  <p>Electrostatic and hydrodynamic calculations become more difficult when a system is confined, partly periodic, or separated by dielectric interfaces. We develop Ewald-type decompositions, random-batch methods, boundary-integral formulations, and hybrid solvers for these settings.</p>

  <p>The central numerical questions are concrete: how the approximation error depends on the model parameters, how computational cost grows with system size, and which boundary and interface effects remain represented.</p>

  <ul class="evidence-links">
    <li><a href="{{ '/科研论文成果汇总/published/2025_JCTC_ErrorEstimate_GaoZhouGanLiang.pdf' | relative_url }}">Accurate error estimates and optimal parameter selection in Ewald summation for dielectrically confined Coulomb systems</a>, <em>JCTC</em>, 2025</li>
    <li><a href="{{ '/科研论文成果汇总/published/2025_SISC_RBE2D_GanGaoLiangXu.pdf' | relative_url }}">Random batch Ewald method for dielectrically confined Coulomb systems</a>, <em>SISC</em>, 2025</li>
    <li><a href="{{ '/科研论文成果汇总/published/2025_JCompPhys_Q2D_GanGaoLiangXu.pdf' | relative_url }}">Fast algorithm for quasi-2D Coulomb systems</a>, <em>JCP</em>, 2025</li>
    <li><a href="{{ '/科研论文成果汇总/accepted/siam-mms-accepted.pdf' | relative_url }}">An O(N) quasi-Ewald splitting method for nanoconfined electrostatics</a>, accepted in <em>SIAM MMS</em>, 2026</li>
  </ul>

  <p class="research-next"><strong>Current questions.</strong> Error control under stronger dielectric contrast, scalable solvers for confined geometries, and links between electrostatic and hydrodynamic algorithms.</p>
</section>

<section class="research-detail">
  <h2>Mechanisms in polarizable and active soft matter</h2>

  <p>Long-range interactions do more than create a computational cost. They also select structures and dynamics. We study how dielectric contrast, confinement, activity, and memory influence attraction, packing, broken symmetry, and collective motion.</p>

  <p>The goal is not to treat every simulated pattern as a universal mechanism. We compare numerical observations with electrostatic theory or reduced physical models and state the regime in which the explanation applies.</p>

  <ul class="evidence-links">
    <li><a href="{{ '/科研论文成果汇总/published/2025_LCA_SoftMatter_DuanGanChan.pdf' | relative_url }}">Mechanisms of electrostatic interactions between two charged dielectric spheres inside a polarizable medium: an effective-dipole analysis</a>, featured cover in <em>Soft Matter</em>, 2025</li>
    <li><a href="{{ '/科研论文成果汇总/published/2025_LCAtheory_JCTC_DuanGan.pdf' | relative_url }}">Quantitative theory for critical conditions of like-charge attraction between polarizable spheres</a>, <em>JCTC</em>, 2025</li>
    <li><a href="{{ '/科研论文成果汇总/published/2024_JCP_BrokenSymmetries_GaoGan.pdf' | relative_url }}">Broken symmetries in quasi-2D charged systems via negative dielectric confinement</a>, <em>JCP</em>, 2024</li>
    <li><a href="{{ '/科研论文成果汇总/published/2026_JCP_ConfinedDipoleColumns_DuanGanMohrbachChanMessina.pdf' | relative_url }}">Dipolar cohesion in densely packed confined columns</a>, <em>JCP</em>, 2026</li>
    <li><a href="{{ '/科研论文成果汇总/published/2024_JCP_Chemotaxis_KyleJohnsonGanZhang.pdf' | relative_url }}">Interplay of chemotactic force, Péclet number, and dimensionality dictates the dynamics of auto-chemotactic chiral active droplets</a>, <em>JCP</em>, 2024</li>
  </ul>

  <p class="research-next"><strong>Current questions.</strong> Contact interactions between asymmetric polarizable particles, memory in chemotactic motion, and the relation between confinement, cohesion, and helicity.</p>
</section>

<section class="research-detail">
  <h2>Data-driven PDE computation</h2>

  <p>This program studies when learned operators and reduced-order models can predict PDE dynamics from limited data while retaining useful mathematical structure. Current projects cover pattern dynamics, nonlinear fluid evolution, parametrized PDEs, and reduced models for nearly touching plasmonic structures.</p>

  <ul class="evidence-links">
    <li><a href="{{ '/科研论文成果汇总/accepted/ASCC26_LSR_finalVersion.pdf' | relative_url }}">LSR-Net: Learning the forward evolution operator for nonlinear fluid dynamics</a>, accepted at ASCC, 2026</li>
    <li><a href="{{ '/科研论文成果汇总/preprint/LSRmanifold-JCP-preprint-underreview.pdf' | relative_url }}">LSR-Net: Long-short-range operator learning for pattern dynamics on manifolds</a>, under review</li>
    <li><a href="{{ '/科研论文成果汇总/preprint/SS-POD-COMPES-preprint-underreview.pdf' | relative_url }}">A spectral-subspace-augmented POD-Galerkin method for parametrized PDEs with limited snapshot data</a>, under review</li>
    <li><a href="{{ '/科研论文成果汇总/preprint/rcip-rom-hu-2026-preprint.pdf' | relative_url }}">RCIP-based reduced-basis modeling for frequency sweeps in nearly touching plasmonic disks</a>, preprint</li>
  </ul>

  <p class="research-next"><strong>Current questions.</strong> Generalization outside the training regime, error growth over time, and comparisons with standard numerical baselines.</p>
</section>

<p class="archive-link"><a href="{{ '/publicationZG.html' | relative_url }}">Complete publication record</a></p>
