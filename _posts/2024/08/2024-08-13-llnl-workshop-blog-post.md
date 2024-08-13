---
layout: page
authors: ["Andrew Reid", Trevor Keller", "Jane Herriman"]
teaser: "We ran the full user workshop at LLNL!"
title: "HPC Carpentry at LLNL"
date: 2024-08-13
time: "12:00:00"
tags: ["HPC Carpentry", "Lesson Program Implementation"]
---

## HPC Carpentry at LLNL

In the first week of June, 2024, instructors from [HPC Carpentry][hpcc]
taught our full workflow workshop for the first time, not once but twice,
over a four-day stint at the Lawrence Livermore National Laboratory.

It was immensely rewarding to see all this material come together in
one place, and I think we served our learners pretty well, and learned
a few lessons relevant to future workshops. Traveling to teach in person,
while not without hiccups, was extremely worthwhile.

### Workshop Structure

Each workshop ran over two days. On the first day, we did the [Unix Shell
intro][shell] lesson from Software Carpentry in the morning, and our own
[HPC Intro][intro] lesson in the afternoon. On the second day, we did a
variant of the [workflow lesson][work], adapted for the Maestro workflow
tool (rather than Snakemake), because it is developed and widely used at LLNL.

The instructor team consisted of Andrew Reid and Trevor Keller from
the HPC Carpentry steering committee, and Jane Herriman from LLNL,
along with helpers from the LLNL community.

While split-terminal tools exist, we used vanilla [tmux][tmux] with two
terminals attached to the same session. This allowed the instructors to type on
their own laptop, with the lesson webpage alongside, while learners followed
along on the enhanced terminal displayed at the front of the room. Note:
to "scroll up" in `tmux`, press <kbd>Ctrl</kbd>+<kbd>b</kbd>, <kbd>[</kbd>,
then arrow-key around.

#### Maestro

Maestro is a capable workflow engine, and one we would not have explored had
Jane not ported the Snakemake lesson so expertly. Maestro favors
reproducibility, running every step of the task from scratch at every
invocation. This is a significant difference from Snakemake which, like Make,
does not re-execute completed "targets." A significant benefit of Maestro is
that the tool does not persist while jobs execute: it generates and submits
native Slurm jobs, with tooling in place to check the status of running
workflows. This is much more HPC-compatible, for large-scale or time-consuming
jobs.

### Learners

Learners had a range of backgrounds, from undergraduate bio-informatics
students to experienced Linux HPC users. The lessons generally went
at a slightly faster pace than expected, without leaving anyone
behind. This was in part because access to the LLNL system was by means
of pre-authorized RSA tokens, removing a lot of the friction from the
initial connection process that has been time-consuming in other versions
of the workshop. The instructors live-coded plenty of mistakes, opening
discussions on some interesting tangential topics. LLNL runs a pool of "login
nodes," rather than a single machine, which made for interesting, early
discussion of networked filesystems. The sheer number of machines also made the
output of `sinfo` tricky to comprehend at-a-glance, which is awesome.

### Lesson Feedback

One major take-away is that the workflow lesson in particular is
vulnerable to learners losing the thread if they miss a step. This lesson,
in either its Maestro or Snakemake version, builds up an increasingly
sophisticated workflow specification file, incrementally demonstrating
workflow concepts in the context of the tool. Consequently, a learner
who misses a step and falls behind can find themselves unable to recover,
since the remainder of the lesson builds on precisely the content that was
missed. The Workflow lesson differs in this respect from the Shell and
HPC intro lessons, where later steps can better stand on their own.

The solution to this, which we already started to implement for the
second workshop, was to have a shared on-line notepad with "checkpoint"
versions of the file, to which learners can refer if they fall behind,
with helpers bridging the content gap for them. Also, LLNL supports and
uses the [`give`][give] tool, allowing users to easily pass files around:
it's nifty!

The hands-on Carpentries approach proved itself once again, building
muscle memory and vocabulary in learners, who could then move on to their
LLNL summer research projects with greater confidence in their ability
to productively use the shared high-performance computing resources.

For the project, it was confirmation that the HPC User workshop can
work, including the valuable feedback about checkpoint files and a
shared notepad.  We look forward to teaching this workshop more, and
getting it out of beta status and into our main curriculum.

<!-- links -->
[give]: https://github.com/hpc/give
[hpcc]: https://hpc-carpentry.org/
[intro]: https://hpc-workshops.github.io/llnl-hpc-intro/
[shell]: https://swcarpentry.github.io/shell-novice
[tmux]: https://github.com/tmux/tmux/wiki
[work]: https://xorjane.github.io/maestro-workflow-lesson/
