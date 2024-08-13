---
layout: page
authors: ["Andrew Reid", Trevor Keller", "Jane Herriman"]
teaser: "We ran the full user workshop at LLNL!"
title: "HPC Carpentry at LLNL"
date: 2024-08-13
time: "09:00:00"
tags: ["HPC Carpentry", "Lesson Program Implementation"]
---

## HPC Carpentry at LLNL

In the first week of June, 2024, instructors from [HPC Carpentry][hpcc]
taught our full workflow workshop for the first time, not once but twice,
over a four-day stint at the Lawrence Livermore National Laboratory.

It was immensely rewarding to see all this material come together in
one place, and I think we served our learners pretty well, and learned
a few lessons relevant to future workshops.

### Workshop structure

Each workshop ran over two days. On the first day, we did the [Unix Shell
intro lesson][shell] from Software Carpentry in the morning, and our own
[HPC Intro][hpcc] lesson in the afternoon. On the second day, we did a
variant of the [workflow lesson][work], adapted for the Maestro workflow
tool (rather than the Snakemake default), which is developed at LLNL.

The instructor team consisted of Andrew Reid and Trevor Keller from
the HPC Carpentry steering committee, and Jane Herriman from LLNL,
along with helpers from the LLNL community.

### Learners

Learners had a range of backgrounds, but lessons generally went
at a slightly faster pace than expected, without leaving anyone
behind. This was in part because access to the LLNL system was by means
of pre-authorized RSA tokens, removing a lot of the friction from the
initial connection process that has been time-consuming in other versions
of the workshop.

### Lesson Feedback

One major take-away is that the workflow lesson in particular is
vulnerable to learners losing the thread if they miss a step. This lesson,
in either its Maestro or Snakemake version, builds up an increasingly
sophisticated workflow specification file, incrementally demonstrating
workflow concepts in the context of the tool. Consequently, a learner
who misses a step and falls behind can find themselves unable to recover,
since the remainder of the lesson builds on precisely the content that was
missed. The workflow lesson differs in this respect from the shell intro
or HPC Intro lesson, where later steps can better stand on their own.

The solution to this, which we already started to implement for the
second workshop, was to have a shared on-line notepad with "checkpoint"
versions of the file, to which learners can refer if they fall behind,
with helpers bridging the content gap for them.

The hands-on Carpentries approach proved itself once again, building
muscle memory and vocabulary in learners, who could then move on to their
LLNL summer research projects with greater confidence in their ability
to productively use the shared high-performance computing resources.

For the project, it was confirmation that the HPC User workshop can
work, including the valuable feedback about checkpoint files and a
shared notepad.  We look forward to teaching this workshop more, and
getting it out of beta status and into our main curriculum.

<!-- links -->
[hpcc]: https://hpc-carpentry.org/
[shell]: https://swcarpentry.github.io/shell-novice
[intro]: https://carpentries-incubator.github.io/hpc-intro/
[work]: https://carpentries-incubator.github.io/hpc-workflows/
