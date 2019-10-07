---
layout: page
title: "Community Developed Lessons"
permalink: "/community-lessons/"
---


## The Carpentries Incubator

The Carpentries Incubator is a place for Carpentries community members to share Carpentries-style teaching materials at all stages of 
development, to collaborate on lesson development, and receive feedback from other community members. 
People already familiar with The Carpentries teaching practices can teach 
these lessons in meetups, in classes, or as complements to a "standard" 2-day Carpentries workshop. These lessons can also be used by 
independent learners, outside of workshops.

Lessons in The Carpentries Incubator are developed and supported by community members and are not officially endorsed by The Carpentries. 
We encourage you to browse the Incubator lessons for materials that meet your needs and to use these materials freely (all lessons are 
licensed [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)). However, we are unable to offer workshops teaching these lessons upon
request.

If you are interested in developing or submitting a lesson to The Carpentries Incubator, learn how at our [GitHub Repository](https://github.com/carpentries-incubator/proposals#readme).


{% assign lesson_list = site.data.community_lessons | where: "carpentries_org","carpentries-incubator" %}
{% include lesson_table %}


## The CarpentriesLab

{% assign lesson_list = site.data.community_lessons | where: "carpentries_org","carpentrieslab" %}
{% include lesson_table %}

