---
layout: page
title: "Community Developed Lessons"
permalink: "/community-lessons/"
---

The Carpentries community is commited to a collaborative and open process for lesson development and to sharing teaching materials. We 
provide two avenues for community members to share lesson materials - **The Carpentries Incubator** and **The CarpentriesLab**. 

[The Carpentries Incubator](#the-carpentries-incubator) is for:
* Collaborative lesson development (from conceptual to stable lessons).
* Providing visibility for lessons that are being worked on.

[The Carpentries Lab](#the-carpentrieslab) is for:
* Repository of peer-reviewed, short-format, lessons that use the teaching approach and lesson design from The Carpentries.
* Getting peer-review on the content of the lesson in the way traditional journal peer-review wouldn’t be able to provide.

People already familiar with The Carpentries teaching practices can teach 
Carpentries Incubator or CarpentriesLab lessons in meetups, in classes, or as complements to a "standard" 2-day Carpentries workshop. 
These lessons can also be used by independent learners, outside of workshops.

## The Carpentries Incubator

The Carpentries Incubator is a place for Carpentries community members to share Carpentries-style teaching materials at all stages of 
development, to collaborate on lesson development, and receive feedback from other community members. 

Lessons in The Carpentries Incubator are developed and supported by community members and are not officially endorsed by The Carpentries. 
We encourage you to browse the Incubator lessons for materials that meet your needs and to use these materials freely (all lessons are 
licensed [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)). However, we are unable to offer workshops teaching these lessons upon
request.

If you are interested in developing or submitting a lesson to The Carpentries Incubator, learn how at our [GitHub Repository](https://github.com/carpentries-incubator/proposals#readme).


{% assign lesson_list = site.data.community_lessons | where: "carpentries_org","carpentries-incubator" %}
{% include lesson_table %}

<hr>

## The CarpentriesLab

The CarpentriesLab is a place for sharing high-quality, peer-reviewed lessons that follow best practices in pedagogy and the general teaching practices used in Carpentries workshops.

Lessons in The CarpentriesLab have been peer-reviewed and are approved by The Carpentries as high-quality resources. 
We encourage you to browse the Lab lessons for materials that meet your needs and to use these materials freely (all lessons are 
licensed [CC BY 4.0](https://creativecommons.org/licenses/by/4.0/)). However, we are unable to offer workshops teaching these lessons upon
request.

At this time, we are not accepting lesson submissions to The CarpentriesLab. If you are interested in having a lesson reviewed for inclusion in The Lab, please submit it first to The Incubator through our [GitHub Repository](https://github.com/carpentries-incubator/proposals#readme).

{% assign lesson_list = site.data.community_lessons | where: "carpentries_org","carpentrieslab" %}
{% include lesson_table %}

