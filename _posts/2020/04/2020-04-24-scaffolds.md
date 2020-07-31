---
layout: page
authors: ["Zhian N. Kamvar", "Erin Becker"]
teaser: "We now offer cloud instances as backup for learners with installation issues"
title: "Scaffolding Installation for Online Workshops"
date: 2020-04-24
time: "15:00:00"
tags: ["Infrastructure", "Online Workshops"]
---

## Installing software is hard!

If you have been involved with a Carpentries workshop (or any technical
workshop!), you have probably noticed that ensuring learners have a working
installation of the tools that will be used can be a significant challenge.
Installing software is an acquired skill, and troubleshooting the installation
process often requires some of the very skills that we teach in our workshops!
Some Instructors pre-empt these issues by offering an “installation party” the
evening before the workshop - however, folks who have the least experience with
software installation are the least likely to recognise how challenging it can
be, and therefore often the least likely to show up for these installation help
events.

At in-person workshops, Instructors and Helpers are able to work individually
with learners at the start of the workshop to overcome installation problems.
This often requires looking over the learner’s shoulder, discussing issues with
other Helpers, and (occasionally) going hands-on on the learner’s keyboard to
fix complex issues. Online workshops pose their own unique challenges with
installation. Although breakout sessions are available on some platforms, it is
not easy to sort learners who need help into breakout sessions with appropriate
helpers, or for helpers to hop across breakout rooms to provide support to
different learners.

The Carpentries teaching philosophy emphasises learners using their own
computers, as this leaves them more prepared to continue learning after the
workshops. Because of this, we strongly recommend learners install all of the
required software on their own computer, however, we also want to support our
community in adjusting to the unique challenges of online workshops. We are
providing cloud instances for each curriculum, pre-loaded with all required
software and data. These are intended to function as **backups** for learners
who are experiencing significant installation difficulties. In the rest of this
post, we describe the approach we’re currently taking in providing these
backups, some of the design choices that went into developing this solution, and
how we are collecting feedback and suggestions about alternative solutions.

## What solution are we proposing?

Our primary aim in developing an installation solution is to meet learners where
they are, and does not require knowledge of any of the tools they will be
learning in their workshop. We anticipate that learners may be frustrated, and
strive to offer a user-friendly solution. After exploring different options, we
have settled on two main platforms to provide “one-click” installation for
learners - [RStudio Cloud][rs-cloud] for R-based workshops, and [My
Binder][my-binder] for Python-based workshops.

These platforms have strengths and drawbacks, but have both been used
extensively for classroom teaching, have active user communities, and are
well-supported. In fact, Binder buttons already exist for some of our lessons,
and we already use RStudio Cloud in some Data Carpentry workshops.

We have set up a collection of pre-configured Jupyter and RStudio instances on
these platforms for all lessons in the official Data Carpentry, Library
Carpentry, and Software Carpentry curricula. Because these are intended to serve
as **backups** for learners facing installation difficulties, and we want to
continue to encourage learners to install software on their own computers, we
will provide the relevant links to Instructors by email in advance of their
workshop. Instructors can then share that information with learners who have not
completed install by the start of the workshop, allowing them to quickly jump
into participatory live coding.

### R-based workshops

For R-based workshops, our backup solution uses [RStudio Cloud][rs-cloud]. This
has a nearly identical interface to the desktop version of RStudio, has a quick
package installation feature, and gives the user the ability to save their work
(after logging in with a Google, GitHub, or Rstudio Cloud account). Once the
learner clicks the link provided by their Instructor, the RStudio session should
start up within 30 seconds to 1 minute. Both Shell and Git lessons can be taught
from the “Terminal” tab in RStudio (see caveats below).

> Caveats:
>
> 1. The learner must sign in to RStudio Cloud and copy the project to their own
>    account (this is done by clicking a button at the top right hand side of
>    the page).
> 2. For shell and git lessons there is no nano editor, so the learners must use
>    the text editor provided within RStudio.

These caveats, and other usage instructions, will be shared with Instructors,
and we are currently determining the best “home” for these instructions on The
Carpentries website.

### Python-based workshops

For Python-based workshops, our backup solution uses [MyBinder][my-binder]. This
has an identical interface to Jupyter Hub and Jupyter Lab and does not require
learners to log in. Once the learner clicks the link provided by their
Instructor, the session should start up within 30 seconds to 1 minute, if it has
been used within the previous 12 hours. Shell and git lessons can be taught from
a new Terminal session within MyBinder, but **git lessons including the use of
GitHub should not be taught through the MyBinder interface** (see caveats
below).

> Caveats:
>
> 1. As learners are not required to log in, they will need to save and
>    re-upload their files (including notebooks and cleaned data) between
>    sessions. must be
>    [saved and re-uploaded](https://github.com/carpentries/scaffolds/blob/master/instructions/workshop-coordination.md#user-content-binder-upload)
>    between sessions.

> 2. The session will stop after
>     [10 minutes of inactivity](https://mybinder.readthedocs.io/en/latest/faq.html#how-long-will-my-binder-session-last).
> 3. The first time the notebook is used, and If the notebook has not been used
>    within 12 hours, it can take up to 10 minutes to start up.
> 4. **Learners should NOT connect to GitHub using MyBinder.** All information
>    entered into the console should be [treated as
>    public](https://mybinder.readthedocs.io/en/latest/faq.html#can-i-push-data-from-my-binder-session-back-to-my-repository)
>    (SOLUTION: use RStudio Cloud for Git lessons [see below])

### Shell lessons

For a pure shell workshop (no R, no Python, no Git), our backup solution uses
[MyBinder][my-binder]. This has an interactive shell, manual pages, and the nano
text editor installed.

> Caveats:
>
> As learners are not required to log in, they will need to save and re-upload their files (including notebooks and cleaned data) between sessions. must be [saved and re-uploaded](https://github.com/carpentries/scaffolds/blob/master/instructions/workshop-coordination.md#user-content-binder-upload) between sessions.

### Git lessons

For any workshop where GitHub will be used, our solution is to use the [RStudio
Cloud][rs-cloud] terminal tab. This is the only online interface that will be
secure enough to allow people to connect with GitHub.

> Caveats:
>
> RStudio Cloud does not have the nano text editor installed, so the learners
> must use the text editor provided within RStudio.

These caveats, and other usage instructions, will be shared with Instructors,
and can be found in the [Scaffold Support
Guide](https://github.com/carpentries/scaffolds/blob/master/instructions/workshop-coordination.md#supporting-learners-with-carpentries-scaffolds).

## How will this information be shared with Instructors and learners?

Instructors will receive links to these backup solutions in one of the
pre-workshop preparation emails sent by our workshop coordinators. This email
will also include information about the caveats discussed above, and a link to
detailed instructions for learners, including screenshots. We recommend that
Instructors wait to share this information with learners until the start of the
workshop, and then only with those learners who have not successfully completed
installation on their own computer.


## What other options have we considered?

Examples of services that looked promising, but were ultimately rejected were:

* [Google CoLab][co-lab]: This is an interface to Jupyter notebooks that’s
  hosted by Google and stylized to blend with Google Drive. It was rejected
  because it required a Google account, usage limits were unclear, and the
  interface was sufficiently different from Jupyter Lab
* [CoCalc][co-calc] (from Sage): This interface has nearly all of the tools
  needed, but was ultimately rejected because it has a sufficiently different
  interface and sets defeating expectations for users on the free tier (e.g.
  “expect poor performance... “, “the free servers are **_randomly rebooted
  frequently,_**...” [emphasis theirs])
* [Cyverse Atmosphere][cyverse]: This service is largely oriented towards
  bioinformatics users, but has a lengthy registration form and requires a
  payment plan to use the cloud computing services



## What are we doing to collect feedback and where should people share feedback they have?

We will be collecting feedback from instructors about how many of their learners
needed to use these backup options, so that we can scale up the infrastructure
if needed. We are also reaching out to individuals in our community who have
experience working with MyBinder or RStudio Server to ask for their guidance.
Last, but certainly not least, we are seeking input from a small group of
recently-certified instructors who have not used these tools in the past. This
last set of reviewers will help us overcome our [expert awareness
gap](https://carpentries.github.io/instructor-training/03-expertise/) and ensure
the solutions we’re providing are usable by novice learners. We encourage
feedback from any of our community members. We recognise that every workshop
will be different, and encourage experienced instructors to test out other
installation solutions and report back how things work! Please provide us your
feedback either by opening an issue in the [Scaffolds
repository](https://github.com/carpentries/scaffolds/issues/new) or by email at
[team@carpentries.org](mailto:team@carpentries.org).



[my-binder]: https://mybinder.org
[jupyter]: https://jupyter.org/
[rs-cloud]: https://rstudio.cloud
[rstudio]: https://rstudio.com
[co-lab]: https://colab.research.google.com/
[co-calc]: https://cocalc.com/
[cyverse]: https://cyverse.org/atmosphere
