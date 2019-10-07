---
layout: page
title: "Community Developed Lessons"
permalink: "/community-lessons/"
---


## The Carpentries Incubator

There is excitement and interest in the way The Carpentries teaches and delivers workshops. The Carpentries Incubator is a place for Carpentries community members to share their teaching materials at all stages of development, and to receive help and feedback from other community members. People already familiar with The Carpentries teaching practices can teach these lessons in meetups, in classes, or as complements to a "standard" 2-day Carpentries workshop. These lessons can also be used by independent learners, outside of workshops.

This is the current list of lessons that are currently in The Carpentries Incubator. If you are interest in developing or submitting a lesson, read about the procedure in The Carpentries Incubator [GitHub Repository](https://github.com/carpentries-incubator/proposals#readme).

{% assign lesson_list = site.data.community_lessons | where: "carpentries_org","carpentries-incubator" %}
{% include lesson_table %}


## The CarpentriesLab

{% assign lesson_list = site.data.community_lessons | where: "carpentries_org","carpentrieslab" %}
{% include lesson_table %}

