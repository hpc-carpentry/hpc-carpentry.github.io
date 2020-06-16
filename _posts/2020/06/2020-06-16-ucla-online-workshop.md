---
layout: page
authors: ["Ibraheem Ali", "Jamie Jamison", "Kristian Allen", "Leigh Phan", "Tim Dennis"]
teaser: "This post covers instructors' experiences from teaching an online workshop at UCLA"
title: "Lessons Learned - Teaching Carpentries Workshop Online UCLA Spring 2020"
date: 2020-06-16
time: "09:00:00"
tags: ["Carpentries Workshops", "Teaching", "Online Workshops"]
---

*This blog post was originally posted on the [UCLA Library website](https://www.library.ucla.edu/blog/dsc/2020/06/03/lessons-learned--teaching-carpentries-workshop-online-ucla-spring-2020). As a member of the Carpentries, we offer Carpentries and Carpentries-styled workshops.*

## Introduction

Between April 10 and May 1, the UCLA Library Data Science Center offered [four online 3-hour sections](https://ucla-data-archive.github.io/2020-04-10-ucla/) in R programming from Software Carpentry's R for Reproducible Scientific Analysis. Our usual in-person workshops have a capacity of 30 learners and a typical waitlist of 20. Our attendance for the online course ranged from 30-50 with a waitlist of 250. Our learners primarily consisted of UCLA graduate students in business analytics and social sciences.

## Workshop Preparation 

Leading up to the workshop we met weekly to create a schedule that would be appropriate for four 3-hour sessions. We selected certain episodes from [R for Reproducible Scientific Analysis](http://swcarpentry.github.io/r-novice-gapminder/):

* Week 1: Introduction to R (Parts of Episodes 1-7)
* Week 2: Data cleaning and preparation in R (Episodes 13 & 14)
* Week 3: Creating Publication-Quality Graphics with ggplot2 (Episode 8)
* Week 4: Producing Reports with knitr (Episode 15)

Our group also had meetings before the workshop to practice with the online environment, test technical features (many which are specific to Zoom), simulate teaching scenarios and role play different perspectives that could pose problems in an online workshop environment.

In the preparation meetings, we practiced:

* Simulating entering a workshop as an authenticated user or by entering a password
* Creating breakout rooms of smaller participant size (for which we used during practice challenge sessions)
* Sharing screens with participants to test how presenters can best organize multiple windows
* Positioning camera, microphone and lighting properly
* Coordinating smooth handoffs to instructors or helpers during the workshop

Following the [Carpentries recommendations](https://carpentries.org/online-workshop-recommendations/#instructional-roles) on workshop role responsibilities, we spent time planning the roles for the instruction team and thinking through how we interacted with learners. Due to difficulty for the instructor to identify the learners’ reactions to content online, additional help is needed to monitor, pool and flag the instructor when questions arise. The primary roles and responsibilities we worked out as a team are as follows: 

### Role Responsibilities:

**Instructors**

* Present content and exercises
* Demonstrate live coding of key lesson concepts
* Answer questions from learners when notified by helpers
* Manage setting up and closing of the breakout rooms

**Helpers**

* Monitor and respond to Zoom chat
* Help learners with any technical issues that arise
* Update Etherpad to reflect feedback
* Proactive notification of instructors when questions arise
* Guide breakout room through group exercises and interactions

We also adopted a convention of helpers adding a “⭐ (Helper)” in their Zoom name to make it easier for learners to visually identify and communicate with them.

## Instruction & Implementing Feedback

Our team consisted of four instructors and 3-4 helpers. Instructors organized into teams of two to teach the first and second halves of the series. During workshop sessions when instructors were not teaching, they also supported as helpers. In terms of setup, we prepared with the assumption that all learners would be using a laptop (no additional monitors) and prepared our screens in a way that would be best viewed on smaller screens.

In response to learners’ direct feedback, we adapted our schedules week-by-week. As a result, we increased time learners spent practicing material in breakout rooms. In addition, we added challenge problems of various levels during breakout rooms, so that once learners completed the first challenge problems, they could move forward onto more challenging problems. 

By the second week, Q&A discussions organically unfolded and learners became more comfortable asking questions via audio or chat in the main meeting room. In response to this, in the following weeks we found it valuable to intentionally schedule time between lectures and demonstrations for discussions among the class. This allowed time for us to clarify points of confusion and ultimately revealed common themes that we could improve upon when teaching in the future.

Compared to our workshop’s typical model of a two-day all-day bootcamp, the 4-week workshop series came with some added benefits. Teaching the workshop in consecutive weeks allowed us to adapt quickly to the learners’ experiences progressively. We taught our workshop sessions in 3-hour chunks and we agreed that any longer period of time would have been fatiguing for all participants due to extended periods of time staring at the computer screen.

The weekly workshop series also afforded us one week’s time between classes to adapt the curriculum based on feedback from the previous week. This model also gave learners the opportunity to practice the material they had learned between classes and to return to the following week’s workshop with questions.

## Feedback from Learners & Instruction Team

Feedback from both the learners and instruction team proved invaluable. In place of sticky notes the Carpentries usually use to solicit feedback (“what went well, what could be improved”), we used a Google Form with those two questions and an optional additional question asking whether the learner had any technical questions or software issues.

In addition to the Google Form we also received feedback through the Zoom chat feature. Helpers would monitor learners’ questions in the chat, answer questions and troubleshoot where needed.

From the feedback survey, learners’ responses were similar to feedback received from in-person workshops and included:

* Pacing of instruction that tended to vary based on their previous experience with programming.
* Issues with getting set up and having the necessary software installed.

Learner feedback targeted to the online setting included: 

* Positive feedback on "access to helpers" and their responsiveness through chat or breakout rooms.
* Positive experience on the use of breakout rooms for challenges & exercises.
* Some learners felt the breakout rooms duration did not match the number or rigor of challenge problems. 
* Some learners requested longer breakout sessions.  
* Some expressed that they would like to see breakout rooms by experience.

We acted on the feedback in subsequent sessions by increasing the time spent in and number of challenges worked on during the breakout sessions. 

## Recording and Preservation 

Responding to requests from our learners, we decided to record our Zoom and share the recording. Once recorded, we archived the videos and made them publicly accessible in the UCLA Dataverse repository: https://doi.org/10.25346/S6/ZJKUAC. At this time there have been 47 downloads.

Per local [UCLA recommendations](https://www.adminvc.ucla.edu/covid-19/academic-continuity/protecting-privacy-and-data-during-remote-working-and-using-zoom), before recording we gave notice on the [workshop website](https://ucla-data-archive.github.io/2020-04-10-ucla/), the class Etherpad and verbally that the session was being recorded and provided instructions on how individuals could anonymize their profiles. The Zoom interface also announces that the session was being recorded.

## Takeaways:

* Adopt roles for your online workshop and make it easy for learners to identify instructors & helpers in your learning platform.
* Practice your video conferencing platform (in this case we used Zoom) and its features prior to your workshop from multiple scenarios & roles.
* When preparing lesson material, keep the learners’ online environment in mind (e.g. how much screen space will they have?).
* Build in longer breaks than you would normally in an in-person workshop and encourage learners to get away from the screen. 
* Limit instruction time to a half-day maximum overall and be especially mindful of cognitive load.
* Break-out rooms with exercises were well-received and should be guided by a helper if available or structured for peer learning.
* Teaching once a week allowed learners time to reflect, practice and solidify concepts.
* Provide a schedule including time for learners to openly ask questions and discuss concepts.
* Helpers were critical to making this a successful workshop. They responded to learners on chat, prompted instructors with common questions and facilitated break-out rooms. 
* Provide a feedback form for participants to use. Keep the feedback form short and simple (similar to the physical feedback sticky notes used in Carpentry workshops).
* Adapt the workshop based on helpers, instructors & learners’ feedback. This seems especially important during a time when everyone is learning and teaching remotely and we are not always aware of each learners’ unique situation.
