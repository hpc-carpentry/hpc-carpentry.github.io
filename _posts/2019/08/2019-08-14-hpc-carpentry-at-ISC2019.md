---
layout: page
authors: ["Alan O'Cais"]
teaser: "A paper on the progress of HPC Carpentry was presented at the 'Workshop on HPC Education and Training for Emerging Technologies' at ISC2019"
title: "HPC Carpentry at ISC2019"
date: 2019-08-14
time: "00:00:00" 
tags: ["Events"]
---

Last year there was a lot of interest in the idea of HPC Carpentry during CarpentryCon 2018, and afterwards there was a drive to build
on that momentum and get an alpha version of the [hpc-intro lesson](https://github.com/hpc-carpentry/hpc-intro) finished (for the most
part by merging the [hpc-in-a-day lesson](https://github.com/psteinb/hpc-in-a-day/) into the existing Compute Canada lesson). When I saw
the "Workshop on HPC Education and Training for Emerging Technologies" (HETET19) at [ISC19](https://www.isc-hpc.com/), I was reminded
(again!) that I hadn't contributed as much to that effort as I might have liked. However, I also didn't want to
see that effort go unreported so Peter Steinbach and I decided to write a short paper for the workshop covering HPC Carpentry
development.[^1]

ISC High Performance is the oldest supercomputing conference in the world, starting in 1986. It's (probably?) the second largest
supercomputing conference after SC and, this year, had 3,573 attendees from 64 countries. The workshop program happens the day after the
main conference, and HETET19 had a half day slot.

Probably what was most interesting for me was that I wasn't the first to discuss HPC Carpentry that day, or the last. Chris Bording
(currently at IBM), one of the discussion panelists, talked quite a bit about HPC Carpentry. I felt he gave great context as to why
something like HPC Carpentry is necessary, talking about the realities of the training needs of the scientists that he met in his
various user support roles.

There was supposed to be another panelist, Mike Croucher, who unfortunately couldn't make it that day in the end. I had recently come across a
presentation of his that he gave this year: ["HPC: Why do so few people care?"](https://mikecroucher.github.io/HPC_for_everyone/),
which for me had a highlight reel like: More people need HPC than ever, but it's so hard to use, reproducibility is hard, and we need
to support research software engineers to help researchers navigate this space.  I thought it was a great
presentation, but I was also wary of focusing too much on outsourcing the HPC aspects of research to RSEs as a silver bullet (though
that may be an unfair characterisation since I only saw the slides, not the presentation itself).

During the HETET workshop, there were also interesting discussions on what makes an effective workshop. For very advanced people,
Fernanda Foertter (NVIDIA) discussed how hackathons work well...but require huge expert participation and essentially 1-1 interaction
between attendee and expert. Fernanda did say though that she was surprised how few power users of large facilities use performance
analysis as part of their development workflow, which to me again highlights the importance of "get more done in less time and with less
pain"...even among the power users!

For HPC Carpentry, we are primarily interested in a scalable training model for novices. There was general interest in the processes
surrounding the shared material (reviews, assessment, versioning). Probably a lot of that interest comes from the efforts to review
community contributed material as part of the [HPC University Community Resource](http://hpcuniversity.org/resources/search/). People were also interested to know if we intend to
cover more than the basics in HPC Carpentry. My personal view on this would probably be "it depends". I have a specific interest in
addressing the needs of the materials science community that I support through my work in [E-CAM](https://www.e-cam2020.eu/) (an EU-funded HPC Centre of Excellence).
Many researchers I come in contact with use community codes that they do only superficial development for. My immediate interest is
mostly to enable the community to *use* HPC resources, not *develop* for HPC resources. The HPC novice lesson is step one for me, step two
is to show people how to effectively utilise the community code they are already familiar with on large scale HPC resources.

The final discussion of the workshop centred around sharing training resources. HPC University has built up a big list of reference
resources, but the licence on the material is, in many cases, unclear. In addition, a participant from Nepal reminded us that
exclusively online content is still a barrier in some countries where internet connections are poor/fragile.

What we should focus on sharing, and how, remained largely open questions during the workshop. However, the fact that everyone wants to
have exactly that conversation was, for me, the most positive point of the workshop.

[^1]: You can find the paper and the reviewer reports in [the associated Topicbox discussion](https://carpentries.topicbox.com/groups/discuss-hpc/Tc0db0c01a48b7d65/hpc-carpentry-at-isc2019).
