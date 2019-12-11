---
layout: page
authors: ["François Michonneau", "Maneesha Sane"]
title: "Gratitude from the Infrastructure Team"
date: 2019-12-11
time: "09:00:00"
tags: ["Infrastructure", "Green Stickies"]
---

The infrastructure The Carpentries Team manages
is mostly invisible to its users,
and yet it provides critical services to our community members.

To name a few, we run our own [Etherpad](https://pad.carpentries.org) instance,
we have scripts that ensures that our websites display up-to-date information
about our [workshops]({% link pages/upcoming_workshops.html %}) and our [community members]({% link pages/instructors.html %}), and
we [generate reports]({% link _posts/2019/10/2019-10-21-transition-to-typeform.md %}) based on the results of the pre- and post-workshop surveys.

This year, our technical infrastructure has considerably changed.

We focused on abstracting the setup of our servers
by using technologies like [Docker](https://docker.com) and [Ansible](https://ansible.com),
and by automating some of our workflows to allow us to scale our operations.

We rely on many open-source packages and libraries that allow us
to retrieve, aggregate, and visualize information across the different
services we use. This includes tools intended for the general public, such as 
R and Python.  It also includes tools built specifically for The 
Carpentries community, such as [AMY, our internal database](https://github.com/carpentries/amy), 
which tracks our workshop, instructor training, and membership activity.

As we reflect on what we are grateful for at this end of this year,
we would like to extend our gratitude to all the developers of
open-source code -- within The Carpentries community and beyond -- 
that allow us to power our infrastructure.  To learn more about
how you can get involved in supporting and growing our systems, 
please contact us at team@carpentries.org.

Thank you all!
