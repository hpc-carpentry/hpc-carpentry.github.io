---
layout: default
title: "Community Developed Lessons"
teaser: "Browse the list of Community Developed Lessons"
comments: false
permalink: "/community-lessons/"
---

{% include expand-side-column %}

<div class="row t30">
<div class="medium-8 column list-posts">

<div itemprop="name">
<h1>{{ page.title }}</h1>
</div>

<p class="teaser" itemprop="description">
{{ page.teaser }}
</p>


The HPC Carpentry community is committed to a collaborative and open process for
lesson development and to sharing teaching materials. We
provide three avenues for community members to share lesson
materials - **The Carpentries Incubator**, **HPC Carpentry** and our
**HPC Carpentry Listings**.

[The Carpentries Incubator](#the-carpentries-incubator) is for:
* Collaborative lesson development (from conceptual to stable lessons).
* Providing wider visibility for lessons that are being worked on.

[HPC Carpentry](#hpc-carpentry) is for:
* Repository of peer-reviewed, short-format, lessons that use the teaching
  approach and lesson design from The Carpentries.
* Getting peer-review on the content of the lesson in the way traditional
  journal peer-review wouldn’t be able to provide.

[HPC Carpentry Listings](#hpc-carpentry-listings) is for:
* Sharing of HPC-relevant, short-format, lessons that use the teaching
  approach and lesson design from The Carpentries.
* Collaborative lesson development and peer review.

People already familiar with The Carpentries teaching practices can teach
The Carpentries Incubator or HPC Carpentry lessons in meetups, in classes,
or as complements to a "standard" 2-day Carpentries workshop.
These lessons can also be used by independent learners, outside of workshops.

## The Carpentries Incubator

The Carpentries Incubator is a place to share Carpentries-style teaching
materials at all stages of development, to collaborate on lesson development,
and receive feedback from other Carpentries community members.

Lessons in The Carpentries Incubator are developed and supported by community
members and are not officially endorsed by The Carpentries (or HPC Carpentry
unless they are part of our curriculum). We
encourage you to browse the Incubator lessons for materials that meet your
needs and to use these materials freely (all lessons should be licensed 
[CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)).

If you are interested in developing or submitting a lesson to the Carpentries
Incubator, [contact us]({{ site.contact }}).
Please read the information in The Carpentries' [Development of Lessons page](
https://carpentries.org/involved-lessons/) if you would like to contribute to
the development of a lesson already present in The Carpentries Incubator.

### _Lessons in The Carpentries Incubator_:

<br>

{% assign lesson_list = site.data.hpc_lessons | where: "carpentries_org","carpentries-incubator" %}
{% include lesson_table %}

<hr>

## HPC Carpentry

The [HPC Carpentry GitHub organisation](https://github.com/hpc-carpentry) is a
place for sharing HPC-oriented, high-quality, peer-reviewed lessons
that follow best practices in pedagogy and the general teaching practices used in
Carpentries workshops.

Lessons in HPC Carpentry have been peer-reviewed and each lesson includes
an indication of the level of maturity of the content.
We encourage you to browse the lessons for materials that meet your needs and
to use these materials freely (all lessons are
licensed [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)).

### _Lessons under HPC Carpentry_:

<br>

{% assign lesson_list = site.data.hpc_lessons | where: "carpentries_org","hpc-carpentry" %}
{% include lesson_table %}

<hr> 

## HPC Carpentry Listings

The HPC Carpentry Listings are a place for people to share HPC-oriented,
short-format, lessons that use the teaching approach and lesson design
from The Carpentries.

If you are interested in having a lesson included in our listings, please
[open an issue in the repository of this website](https://github.com/hpc-carpentry/hpc-carpentry.github.io/issues).
-->

<!--
### _Lessons in the HPC Carpentry Listings_:

{% assign lesson_list = site.data.hpc_lessons | where: "hpc_carpentry_org","FZJ-JSC" %}
{% include lesson_table %}
-->

<hr>

> **Looking for a list of the Carpentries core lessons?** Follow the links below.
> * [Data Carpentry Core Lessons](https://datacarpentry.org/lessons/)
> * [Software Carpentry Core Lessons](https://software-carpentry.org/lessons/index.html)
> * [Library Carpentry Core Lessons](https://librarycarpentry.org/lessons/)

<hr>

## List of Community Developed Lessons by Topic

{% assign lesson_topics = site.data.hpc_lessons | map: "lesson_tags" | uniq | sort%}

{% for t in lesson_topics %}

### {{ t | capitalize | replace: "-", " "}}

{% assign lesson_with_tag = site.data.hpc_lessons | where_exp: "item", "item.lesson_tags contains t" %}

{% for l in lesson_with_tag %}
- [{{l.description}}](#{{ l.description | slugify }}) <a href="#lessons-in-the-{{l.carpentries_org}}"><span class="{{ l.carpentries_org }} radius label">{{l.carpentries_org}}</span></a>
{% endfor %}
{% endfor %}

</div>

<div class="medium-4 column list-tags">

<h2><small>List of Lessons</small></h2>

* <a href="#lessons-in-the-carpentries-incubator">The Carpentries Incubator</a>
* <a href="#lessons-in-the-hpc-carpentry-lab">HPC Carpentry Community</a>

<h2><small>List of Lesson Topics</small></h2>
<ul>

{% for t in lesson_topics %}

{% assign t_pretty = t | slugify: 'pretty' %}
<li><a href="#{{t_pretty}}">{{ t| replace: "-", " " }}</a> {% include n-lesson-by-topic data=site.data.community_lessons topic=t %}</li>

{% endfor %}

</ul>

<div style="position: sticky; top: 4rem;">
  <a href="#top-of-page"><i class="fas fa-chevron-up"></i> Back to the top</a>
</div>

</div>
</div>
