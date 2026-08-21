---
layout: default
title: Research
description: Mathematical models and methods for soft and active materials
---

My research links numerical analysis to models of electrostatic, hydrodynamic, and active-matter systems. The common problem is to compute long-range interactions without losing the physical features that make those systems interesting.

## Scalable simulation of long-range interactions

Particle simulations with Coulomb or hydrodynamic interactions become difficult when geometry, periodicity, and dielectric contrast matter at the same time. I work on Ewald-type decompositions, random-batch methods, boundary-integral formulations, and hybrid approaches for these regimes. The resulting questions are concrete: what is the approximation error, how does the cost grow with system size, and which physical constraints remain represented?

Representative papers include the 2025 <em>SIAM Journal on Scientific Computing</em> study of random-batch Ewald methods, the 2025 <em>Journal of Computational Physics</em> algorithm for quasi-2D Coulomb systems, and the accepted SIAM MMS paper on quasi-Ewald splitting for nanoconfined electrostatics.

## Mechanisms in polarizable and active soft matter

Long-range interactions also determine material behavior. I study how dielectric contrast, confinement, and activity influence attraction, packing, broken symmetry, and collective motion. These studies use theory and simulation together, so that numerical observations are tied to a stated physical model rather than treated as universal mechanisms.

Representative work includes quantitative conditions for like-charge attraction, the featured-cover <em>Soft Matter</em> paper on charged dielectric spheres, the 2026 <em>Journal of Chemical Physics</em> work on confined dipolar columns, and studies of auto-chemotactic droplets.

## Emerging work in data-driven PDE computation

This program asks when operator-learning and reduced-order models can help predict PDE dynamics from limited data. Current work includes long-short-range neural networks, neural-operator formulations, and POD-Galerkin methods. The program is emerging: its public record is mainly accepted conference work, preprints, and manuscripts under review.

<p class="archive-link"><a href="{{ '/publicationZG.html' | relative_url }}">See papers and public preprints</a></p>
