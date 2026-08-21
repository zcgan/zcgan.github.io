---
layout: maths
title: Publications
description: Preprints, Journal papers
---

<p><a href="https://scholar.google.com/citations?user=KHLEMGYAAAAJ&amp;hl=en&amp;oi=ao">Google Scholar</a> &nbsp; <a href="https://github.com/zcgan?tab=repositories">GitHub repositories</a></p>


## Preprints 

<ol reversed="reversed">  <!-- start="26"> -->
  {% for item in site.data.pub_journal.toc[0].papers %}
      <li>
		{{ item.authors }} <br>
        {% if item.url and item.url != "" %}<a href="{{ item.url | relative_url }}">{{ item.title }}</a>{% else %}{{ item.title }}{% endif %}  &emsp; {% if item.venue %} , {{ item.venue }}. {% endif %} {% if item.misc %} ({{ item.misc }}) {% endif %}
      </li>
  {% endfor %}
</ol>



## Journal papers 

<ol reversed="reversed">  <!-- start="19"> -->
{% for item in site.data.pub_journal.toc[1].papers %}
    <li>
      {% if item.url and item.url != "" %}<a href="{{ item.url | relative_url }}">{{ item.title }}</a>{% else %}{{ item.title }}{% endif %} <br> &emsp; {{ item.authors }}, <br>&emsp; <i>{{ item.venue }}</i>, {{ item.year }}. {% if item.misc %} ({{ item.misc }}) {% endif %}
    </li>
{% endfor %}
</ol>

<!--
## Conference proceedings

<ol reversed>
{% for item in site.data.pub_conference %}
    <li>
      <a href="{{ item.url }}">{{ item.title }}</a> <br> &emsp;{{ item.authors }}, <b><i>{{ item.venue }}</i></b>, {{ item.year }}. {% if item.misc %} ({{ item.misc }}) {% endif %}
    </li>
{% endfor %}
</ol>
-->



## PhD Thesis 
<!-- <div id="thesis" class="tabcontent"> -->
<ul>
    <li>
      <b>Title:</b> <a href="assets/files/ZechengGan_Thesis.pdf">Dielectric Effect in Charged Soft Matter Systems: Fast Algorithms and Computer Simulations</a>
    </li>
    <!-- <li>
      <b>Chapter 4</b> contains unpublished result on a general multi-step inertial operator splitting scheme for monotone inclusion problem, which can be used to derive multi-step inertial versions of
          <ul>
              <li>Forward--Backward splitting, Generalized Forward--Backward, Forward--Douglas--Rachford splitting</li>
              <li>A class of Primal--Dual splitting methods</li>
              <li>Proximal Point Algorithm, Douglas--Rachford splitting and Alternating Direction Method of Multipliers (ADMM)</li>
          </ul>
    </li> -->
</ul>
<!-- </div> -->
