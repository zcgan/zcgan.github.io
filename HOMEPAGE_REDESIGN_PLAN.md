# Academic Homepage Redesign Plan

## Scope and goal

This document is an implementation handoff for a tenure-oriented academic homepage for Zecheng Gan. It is based on the latest CV (`最新CV.pdf`, dated August 2026) and the existing site structure.

The site should **not** be an HTML copy of the CV. Its first job is to let an external evaluator understand, in about one minute:

1. the central research problem and academic identity;
2. the independent contributions made since joining HKUST(GZ) in 2021;
3. the evidence for impact, funding, group building, and mentoring; and
4. the next research direction.

No raw citation count, grant amount, author role, award, or appointment label should be displayed unless it is verifiable from an authoritative source.

## Editorial thesis

Recommended one-sentence positioning:

> I develop mathematical models and scalable numerical methods for long-range interactions and collective phenomena in soft and active materials, with emerging work in data-driven PDE computation.

Use a two-core-plus-emerging structure. Do **not** present all three strands as equally mature.

| Program | Status | Evidence to foreground |
| --- | --- | --- |
| Scalable simulation of long-range interactions | Core | Dielectric confinement; Ewald, random-batch, boundary-integral, and hydrodynamic methods; accuracy and complexity evidence. |
| Mechanisms in polarizable and active soft matter | Core | Like-charge attraction, symmetry breaking, dipolar assembly, and auto-chemotactic active matter. |
| Data-driven PDEs and scientific machine learning | Emerging | Operator learning, reduced-order modeling, mesh-free dynamics, and pattern inference; currently primarily preprints/under-review work. |

The scientific-ML strand must be explicitly labelled as an emerging program unless publication evidence changes. This protects claim-evidence consistency.

## Target information architecture

The site name/logo should link to Home. Use no more than seven primary navigation items.

```text
Home
├── Research
├── Publications
├── People
├── Teaching & Mentoring
├── Software & Impact
├── Professional Profile
│   ├── Funding & Honors
│   └── Leadership & Service
└── CV
```

Recommended primary navigation labels:

`Research | Publications | People | Teaching | Software & Impact | Profile | CV`

`News` should remain a home-page section with an archive rather than becoming a primary navigation item. Existing legacy course pages can remain reachable from Teaching, but should not each consume a top-level navigation slot. Internal and external service should be consolidated under Profile.

## Home-page specification

Implement the following order. The first two viewport heights should prioritize research identity and independent scholarly contribution, not a complete employment history or recruitment text.

### 1. Hero

Required content:

- Name, Chinese name, title, and two official affiliations.
- The one-sentence research positioning above, or a close evidence-preserving revision.
- Compact action links: `Research`, `CV (updated Aug 2026)`, `Google Scholar`, `GitHub`, and `Email`.
- Office location is acceptable; do not display a personal mobile number.

Use “Tenure-track Assistant Professor” only if this is the institutionally official appointment title. The latest CV states “Assistant Professor,” so the CV and website must use consistent terminology.

### 2. Research-program map

Use three cards or a three-row layout, one per program above. Every program should state:

`Scientific question → methods → demonstrated contribution`.

Avoid a keyword cloud or generic phrases such as “innovative,” “state-of-the-art,” or “robust” unless a linked result establishes the claim.

### 3. Featured contributions

Replace “Selected recent work” with “Selected contributions.” Curate five or six items spanning the research trajectory, rather than only four papers from 2025.

Each card needs four fields:

`Problem → contribution → evidence → links (paper / code / impact)`.

Candidate evidence set, subject to bibliographic verification before publication:

- dielectric/closely spaced-sphere hybrid methods and the 2019 *JCP* Editors’ Choice;
- quasi-2D Coulomb algorithms and dielectric-confinement error analysis;
- random-batch Ewald and the accepted 2026 *SIAM MMS* quasi-Ewald work;
- mechanisms of polarizable-sphere interactions, including the 2025 *Soft Matter* featured cover article;
- active-matter / dipolar-packing studies;
- LAMMPS PR #4939 adoption as a separate impact link where the precise relationship is documented.

The selected set should show both continuity and post-2021 independence. Do not infer or overstate a leadership role from author order alone.

### 4. Independence and impact snapshot

Use a compact, evidence-linked row or grid. Possible categories:

- PI competitive funding;
- corresponding-author and student-led work, only where accurately labelled;
- scientific software and external adoption;
- selected recognitions, including Editors’ Choice and journal cover;
- group and doctoral mentoring.

Prefer dated facts and links to dynamically fragile aggregate metrics. Do not use “citation counts” unless automatically sourced and refreshed.

### 5. People and mentoring

Show a compact group snapshot and two or three verifiable mentoring outcomes. Link to a complete People page.

Every student must be marked accurately as primary-supervised, co-supervised, postdoctoral, PhD, MPhil, undergraduate, or alumnus. A student who has graduated must not remain in “Current Members.”

### 6. Teaching and academic contribution

Include a compact section covering course ownership/co-ordination, curriculum development, and current academic roles. Link to the complete Teaching page.

### 7. News and opportunities

Show four to six current items, newest first, with a dated archive. Recruitment text should appear after the evidence sections. It must give a concrete contact route without claiming open positions that are not confirmed.

## Supporting pages

### Research

Use the three-program structure. For each program include:

1. scientific problem and model regime;
2. mathematical or computational approach;
3. specific results with linked papers;
4. evidence for accuracy, scaling, physical interpretation, or application impact as appropriate;
5. active projects, students, code, and funding where public;
6. carefully worded next questions.

The Research page should make the link between algorithms and physical systems explicit. It should not present generic prose with only a publication-list link.

### Publications

Generate this page from one canonical structured source, not manually duplicated data.

Required groups, in this order:

1. Peer-reviewed and published;
2. Accepted / in press;
3. Preprints;
4. Optional thesis and selected book chapters, if applicable.

Avoid a public “work in preparing” list unless each item has a stable project page or public preprint. For every listed work, provide full authorship, year, venue/status, DOI or official landing page where available, and PDF/preprint/code links when public.

Add a legend for author-role marks such as corresponding author, equal contribution, and alphabetical authorship. Never visually imply that an under-review paper is accepted.

### People

Sections: PI; current postdocs; current PhD students; MPhil students; undergraduate researchers; alumni; optional collaboration network.

Keep external collaborators off the main group roster. A short collaboration-network section is acceptable, but should not obscure the independent group identity.

Each current member card should include start date, supervision relationship, research topic, and links only with the member’s permission. Alumni should include verified next destination/outcome where available.

### Teaching & Mentoring

Consolidate all current and legacy course pages here.

Include:

- a concise teaching approach;
- current/recent courses with role, institution, semester, and course-owner/coordinator status;
- course-development and curriculum contributions;
- mentoring philosophy and student outcomes;
- optional links to public teaching materials.

Do not treat a list of every historical recitation or TA assignment as a main-page teaching narrative; retain it in the CV.

### Software & Impact

Create cards for each public package or technology outcome. For every item specify:

- scientific problem solved;
- the owner/maintainer/co-developer role, stated precisely;
- repository, documentation, licence, and citation information where available;
- adoption/technology-transfer evidence, such as the LAMMPS pull request;
- limitations and maintenance status, if relevant.

Candidate entries: StochasticHydroTools, TABI-P, HybridMD, ExTinyMD, SolarLabs, and AIPipe. Do not claim code availability if its repository is not public.

### Professional Profile

This page has two readable subsections.

**Funding & Honors**: PI research grants first, then educational, industrial, and internal projects; show funder, role, title or scheme, date range, and active/completed status. Do not display amounts unless approved and verified.

**Leadership & Service**: selected field-building activity, editorial role, conference/minisymposium organization, refereeing, and a compact account of institutional leadership. Keep exhaustive committee lists in the CV rather than turning the webpage into an administrative log.

The “Early Career Physicist” item must be described as a nomination, not as an award, unless the status has changed.

### CV

Offer a dated PDF link and a short HTML professional summary. Publish a public-CV version without a personal mobile number if possible.

Before release, correct the PDF metadata: it currently identifies the subject/keywords as economics/econometrics/industrial organization/applied microeconomics, which is inconsistent with the actual CV.

## Data and maintenance design

Use a small set of canonical YAML or JSON sources, then render all pages from those data sources:

- `publications.yml`: status, authors, venue, year, DOI, PDF, code/data, role markers, theme tags;
- `people.yml`: status, supervision relationship, start/end dates, topic, links, alumni outcome;
- `grants.yml`: category, role, funder, identifier, dates, status, public title;
- `news.yml`: date, category, text, link, archived flag;
- `software.yml`: role, status, repository, documentation, citation, adoption evidence.

This is necessary because the current CV and pages have drifted: publications, group membership, grant lists, and news are not synchronized.

## Evidence and wording guardrails

| Claim type | Minimum public evidence |
| --- | --- |
| Algorithmic performance | Linked paper plus stated complexity, benchmark, or formal result; do not make unsupported “fast/accurate” claims. |
| Physical mechanism | Linked theoretical/simulation study; distinguish numerical observation from general mechanism. |
| Scientific-ML capability | Publication/preprint and scope; label current work as emerging when evidence remains preliminary. |
| Research independence | PI grant, official role, corresponding-authorship notation, advised-student outcome, or independently scoped project. |
| Software impact | Public repository or documented external adoption; distinguish maintainer from contributor. |
| Award/recognition | Official source and exact status; distinguish nomination, selection, and award. |

## Current content audit: implementation priorities

### Major issues

1. The main site still foregrounds 2025 information, while the CV is updated through August 2026.
2. The publication page is incomplete relative to the CV and retains outdated statuses such as “In Press.”
3. The group page has stale memberships, degrees, and research topics, including a `TBD` topic.
4. The grants page omits several grants/projects present in the CV and has no active/completed distinction.
5. Independent post-2021 trajectory, mentoring, software adoption, and external impact are not yet legible on the homepage.
6. Existing top navigation overweights individual legacy courses and split service pages, while research impact and mentoring are underrepresented.

### Minor issues

- News ordering and timestamps require a refresh.
- Publication titles, capitalization, and status labels should be normalized from one verified bibliography.
- CV, home page, and appointment nomenclature should be reconciled.

## Implementation sequence

1. **Evidence audit**: reconcile CV, website, Google Scholar, official publication pages, group status, grants, and award wording.
2. **Canonical data**: create verified data files before altering templates.
3. **Information architecture**: replace the menu and create page shells.
4. **Homepage**: implement the seven modules in the required order.
5. **Research and publications**: add contribution-centered program pages and canonical publication rendering.
6. **People, teaching, impact, profile**: migrate verified content; leave out entries without a defensible public claim.
7. **Quality assurance**: build the Jekyll site, test desktop/mobile navigation and all links, inspect the rendered page, and verify date/status consistency against the CV.

## Acceptance test

Ask an informed colleague who does not know the group to inspect the site for one minute. They should be able to answer all of the following without opening the CV:

1. What is the unifying research problem?
2. What are the two mature research programs and the emerging one?
3. What are the strongest independent contributions since 2021?
4. What evidence supports scholarly and software/technology impact?
5. Who is being trained, and what is the mentoring role?
6. Where can they find publications, code, funding, teaching, and a current CV?

If any answer is unavailable in one click, the site structure is not yet tenure-ready.
