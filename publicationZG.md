---
layout: maths
title: Publications
description: Preprints, Journal papers
---

&ensp; <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 32 32"><path d="M14.573 2.729L6.656 7.984C3.031 10.39.067 12.38.067 12.406c0 .026.182.146.406.266c.224.13 3.797 2.109 7.953 4.411l7.542 4.193l.193-.099c.109-.052 2.891-1.641 6.188-3.521l5.99-3.427l.036 10.599h3.557V12.427l-4.615-3.094C21.098 5.166 16.129 1.885 16.01 1.859c-.063-.01-.703.38-1.438.87zM7.141 22.177l.016 2.672l8.828 5.292l8.891-5.339v-2.641c0-1.458-.016-2.646-.031-2.646c-.021 0-1.76 1.042-3.87 2.323l-4.406 2.661l-.578.339l-1.755-1.052a697.718 697.718 0 0 1-4.385-2.641L7.179 19.53c-.031-.01-.042 1.177-.036 2.646z" fill="#626262"/></svg> [Google scholar](https://scholar.google.com/citations?user=KHLEMGYAAAAJ&hl=en&oi=ao)
&ensp; <svg xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" aria-hidden="true" focusable="false" width="1em" height="1em" style="-ms-transform: rotate(360deg); -webkit-transform: rotate(360deg); transform: rotate(360deg);" preserveAspectRatio="xMidYMid meet" viewBox="0 0 24 24"><path fill-rule="evenodd" clip-rule="evenodd" d="M12.026 2c-5.509 0-9.974 4.465-9.974 9.974c0 4.406 2.857 8.145 6.821 9.465c.499.09.679-.217.679-.481c0-.237-.008-.865-.011-1.696c-2.775.602-3.361-1.338-3.361-1.338c-.452-1.152-1.107-1.459-1.107-1.459c-.905-.619.069-.605.069-.605c1.002.07 1.527 1.028 1.527 1.028c.89 1.524 2.336 1.084 2.902.829c.091-.645.351-1.085.635-1.334c-2.214-.251-4.542-1.107-4.542-4.93c0-1.087.389-1.979 1.024-2.675c-.101-.253-.446-1.268.099-2.64c0 0 .837-.269 2.742 1.021a9.582 9.582 0 0 1 2.496-.336a9.554 9.554 0 0 1 2.496.336c1.906-1.291 2.742-1.021 2.742-1.021c.545 1.372.203 2.387.099 2.64c.64.696 1.024 1.587 1.024 2.675c0 3.833-2.33 4.675-4.552 4.922c.355.308.675.916.675 1.846c0 1.334-.012 2.41-.012 2.737c0 .267.178.577.687.479C19.146 20.115 22 16.379 22 11.974C22 6.465 17.535 2 12.026 2z" fill="#626262"/></svg> [Github repositories](https://github.com/zcgan?tab=repositories) 


## Preprints 

<ol reversed="reversed">  <!-- start="26"> -->
  {% for item in site.data.pub_journal.toc[0].papers %}
      <li>
		{{ item.authors }} <br>
        <a href="{{ item.url }}">{{ item.title }}</a>  &emsp; {% if item.venue %} , {{ item.venue }}. {% endif %} {% if item.misc %} ({{ item.misc }}) {% endif %}
      </li>
  {% endfor %}
</ol>



## Journal papers 

<ol reversed="reversed">  <!-- start="19"> -->
{% for item in site.data.pub_journal.toc[1].papers %}
    <li>
	  <a href="{{ item.url }}">{{ item.title }}</a> <br> &emsp; {{ item.authors }}, <br>&emsp; <i>{{ item.venue }}</i>, {{ item.year }}. {% if item.misc %} ({{ item.misc }}) {% endif %}
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
