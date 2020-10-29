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
provide two avenues for community members to share lesson
materials - **The HPC Carpentry Incubator** and **The HPC Carpentry Lab**.

[HPC Carpentry Incubator](#hpc-carpentry-incubator) is for:
* Collaborative lesson development (from conceptual to stable lessons).
* Providing visibility for lessons that are being worked on.

[HPC Carpentry Lab](#hpc-carpentry-lab) is for:
* Repository of peer-reviewed, short-format, lessons that use the teaching
  approach and lesson design from The Carpentries.
* Getting peer-review on the content of the lesson in the way traditional
  journal peer-review wouldn’t be able to provide.

People already familiar with The Carpentries teaching practices can teach
HPC Carpentry Incubator or HPC Carpentry Lab lessons in meetups, in classes,
or as complements to a "standard" 2-day Carpentries workshop.
These lessons can also be used by independent learners, outside of workshops.

## HPC Carpentry Incubator

The HPC Carpentry Incubator is a place for HPC Carpentry community members to
share Carpentries-style teaching materials at all stages of development, to
collaborate on lesson development, and receive feedback from other
community members.

Lessons in the HPC Carpentry Incubator are developed and supported by community
members and are not officially endorsed by HPC Carpentry. We encourage you to
browse the Incubator lessons for materials that meet your needs and to use these
materials freely (all lessons should be licensed
[CC-BY 4.0](https://creativecommons.org/licenses/by/4.0/)).

If you are interested in developing or submitting a lesson to the HPC Carpentry
Incubator,
[contact us]({{ site.contact }}).
Please read the information on our [Development of Lessons page](/involved-lessons/)
if you would like to contribute to the development of a lesson already present
in The HPC Carpentry Incubator.

## HPC Carpentry Lab

The HPC Carpentry Lab is a place for sharing high-quality, peer-reviewed lessons
that follow best practices in pedagogy and the general teaching practices used in
Carpentries workshops.

Lessons in HPC Carpentry Lab have been peer-reviewed.
We encourage you to browse the Lab lessons for materials that meet your needs and
to use these materials freely (all lessons are
licensed [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)).

At this time, we are not accepting lesson submissions to HPC Carpentry Lab. If
you are interested in having a lesson reviewed for inclusion in the Lab, please
submit it first to the Incubator.

## Lessons in the HPC Carpentry Incubator

{% assign lesson_list = site.data.community_lessons | where: "hpc_carpentry_org","hpc-carpentry-incubator" %}
{% include lesson_table %}

<hr>

## Lessons in the HPC Carpentry Lab

{% assign lesson_list = site.data.community_lessons | where: "hpc_carpentry_org","hpc-carpentry-lab" %}
{% include lesson_table %}

<hr>

> **Looking for a list of the Carpentries core lessons?** Follow the links below.
> * [Data Carpentry Core Lessons](https://datacarpentry.org/lessons/)
> * [Software Carpentry Core Lessons](https://software-carpentry.org/lessons/index.html)
> * [Library Carpentry Core Lessons](https://librarycarpentry.org/lessons/)

## List of Community Developed Lessons by Topic

{% assign lesson_topics = site.data.community_lessons | map: "lesson_tags" | uniq | sort%}

{% for t in lesson_topics %}

### {{ t | capitalize | replace: "-", " "}}

{% assign lesson_with_tag = site.data.community_lessons | where_exp: "item", "item.lesson_tags contains t" %}

{% for l in lesson_with_tag %}
- [{{l.description}}](#{{ l.description | slugify }}) <a href="#lessons-in-the-{{l.carpentries_org}}"><span class="{{ l.carpentries_org }} radius label">{{l.carpentries_org}}</span></a>
{% endfor %}
{% endfor %}

</div>

<div class="medium-4 column list-tags">

<h2><small>List of Lessons</small></h2>

* <a href="#lessons-in-the-hpc-carpentry-incubator">HPC Carpentry Incubator</a>
* <a href="#lessons-in-the-hpc-carpentry-lab">HPC Carpentry Lab</a>

<h2><small>List of Lesson Topics</small></h2>
<ul>

{% for t in lesson_topics %}

{% assign t_pretty = t | slugify: 'pretty' %}
<li><a href="#{{t_pretty}}">{{ t| capitalize | replace: "-", " " }}</a> {% include n-lesson-by-topic data=site.data.community_lessons topic=t %}</li>

{% endfor %}

</ul>

<div style="position: sticky; top: 4rem;">
  <a href="#top-of-page"><i class="fas fa-chevron-up"></i> Back to the top</a>
</div>


</div>

</div>
