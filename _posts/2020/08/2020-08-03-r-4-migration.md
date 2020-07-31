---
layout: page
authors: ["Rohit Goswami", "Zhian N. Kamvar", "Jeff Oliver"]
teaser: "Our timeline and strategy to adapt to R 4.0"
title: "Upgrading R Lessons to use R 4.0"
date: 2020-08-03
time: "09:00:00"
tags: ["Lesson Infrastructure", "R"]
---

## Summary and timeline

In April 2020, [R officially released version 4.0](https://www.r-bloggers.com/r-4-0-0-now-available-and-a-look-back-at-rs-history/). One of the major changes was the removal of the default `stringsAsFactors = TRUE` when reading in data frames. This was [tentatively announced in late July 2019](https://twitter.com/sctyner/status/1155604680531042304) and [officially announced in February 2020](https://developer.r-project.org/Blog/public/2020/02/16/stringsasfactors/index.html). While this change has been seen as a good thing by the majority of the R community as a step towards [reducing common pitfalls](https://simplystatistics.org/2015/07/24/stringsasfactors-an-unauthorized-biography/), it produces an interesting pedagogical challenge for some of our lessons that use errors and warnings generated from this default behavior as mechanisms to introduce learners to the concept of factors.

We have initially recommended for instructors to continue teaching using R 3.6 (which can be installed via the [Windows installer](https://cran.r-project.org/bin/windows/base/old/3.6.3/), or [macOS installer](https://cran.r-project.org/bin/macosx/el-capitan/base/)), but this is only a short-term solution. This blog post serves as an outline for the long-term solution to this particular transition and a potential roadmap for R 5.0 (which may emerge in another 7 to 11 years). In the end, **we recommend migrating all official Carpentries lessons to use R 4.0 by 30 November 2020**. We believe that this gives sufficient time for Maintainers to implement and test solutions. 

## What will be affected?

All R-based lessons will be affected to some degree, but this is minimized if the example data is purely numeric (which is the case for [the inflammation data set in Programming with R](http://swcarpentry.github.io/r-novice-inflammation/)). When the example data contains textual elements, then it is important to check the prose and the output to make sure that everything works as expected. Most of the time, the code will run without errors, but will give results that are out of sync with the prose.

To help maintainers identify changes, we ran R-based lessons with both R 3.6.3 and R 4.0.0 using the [rocker project](https://rocker-project.org) geospatial docker container. [The results are located here](https://github.com/zkamvar/postmaul/blob/master/analysis.md#lessons-that-use-r) and are organized by lesson and episode for easier browsing. 

## Chopportunities (challenges/opportunities)

### Instructors: Managing Expectations

Instructors should prime the learners to expect some small dissonance between what is presented in the materials and what the learner will see on their screen, and let them know if factors are a topic that will be discussed in the workshop. Be aware that there may be some heterogeneity in the installed versions of R for the course and plan accordingly. To maintain consistency through a lesson, the instructor should teach from a single version of R (whichever version will be consistent with the majority of learners in the workshop). 

### Maintainers: Lesson Content

Several lessons use the former (i.e. < 4.0) default setting of `stringsAsFactors = TRUE` to introduce the learner to the concept of factors.  Factors themselves are a bit of a weird concept in R: largely useful in creating statistical models, they are a categorical variable that are represented as labeled integers. Because they are often one of the first data structures people see when reading data into R, it made sense to teach these concepts to novice R users, which follows the concept of teaching [immediately useful content first](https://cdh.carpentries.org/deciding-what-to-teach.html).

Now that characters are no longer converted to factors by default, for lessons that previously used the default parameters as an introduction, there is an extra step needed to introduce the concept, which will increase the cognitive load for learners. **Maintainers of the lessons will need to evaluate the underlying goals of the lessons and determine whether or not they should keep explanations of factors in the main curriculum.** At this moment, we are recommending that, unless factors are used in a later part of the lesson (e.g. with ggplot2) or they represent a crucial learning outcome, then they should be saved as supplemental lesson material. Maintainers of lessons that are affected by the change might find inspiration from the [section on factors from the *R for Social Science* lesson](https://datacarpentry.org/r-socialsci/02-starting-with-data/index.html#factors), which was unaffected by the changes.

## Moving forward

These recommendations came out of a collaborative effort between members of our [Maintainer community](https://carpentries.org/maintainers/). Moving forward, the Maintainer community will review the landscape of the software used in our curriculum and strive to make the necessary adjustments to reduce the friction learners and Instructors experience in workshops soon after major software changes. Above all, we strive to adhere to our principles of people first and evidence-based learning. 
