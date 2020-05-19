---
layout: page
authors: ["Akshay Paropkari","Rachel Lombardi","Charles Guan","Donny Winston"]
teaser: "Here are examples of what worked well and other observations from our workshop held in the last week of April"
title: "Learnings from the First Centrally-Organised Online Workshop of 2020"
date: 2020-05-14
time: "09:00:00"
tags: ["Online Workshops"]
---

Make sure to consult [the official online workshop recommendations](https://carpentries.org/online-workshop-recommendations/) for preparation. They played a large role in our being able to achieve a Net Promoter Score (NPS)<sup>[1](#netpromoterscore)</sup> of 75 in the Carpentries post-workshop survey. Our workshop was conducted online for Genentech. It started in the last week of April and took place over a two week period, with class being held approximately two hours every other day. The workshop covered plotting and programming in Python, Unix Shell, and Git/GitHub.

Based on participants' feedback and our observations, we offer the following advice for your consideration:
- Assist in-band
- Focus on fewer topics, and on exercises
- Buffer the flow of instruction

### Assist in-band

Aim to assist learners in an "in-band" way that pools assistance and minimises context-switching. We used Zoom, and Zoom's integrated chat window was highly utilised. A Public Q&A in the single-channel Zoom chat, with the use of a `"@<learner name>"` message convention for helpers to address learner questions in a pooled way, was by far the most effective overall vehicle for assistance.

We also used Carpentries-hosted [etherpad](https://pad.carpentries.org/) and [CodiMD](https://codimd.carpentries.org/) instances<sup>[2](#codimd)</sup>, but those were less utilised by learners. Even when directed to give feedback in those environments, learners often asked for a link to be given again in the Zoom chat.

Zoom's "breakout rooms" feature was used with success at times to troubleshoot technical issues and facilitate catching up, but overall there was significant impedance mismatch between that functionality and the desire to quickly have a helper connect with a learner in a way that does not lead to more falling behind. Breakout rooms were a poor simulation of in-person helpers "swooping in" to assist a learner.

Ensure a channel for out-of-band communication among the instruction staff. We used a dedicated channel on the Carpentries [Slack workspace](https://swcarpentry.slack.com). Use this channel to relay relevant questions to the instructor so that they need only have this channel visible to them during instruction, rather than needing to monitor the learner-populated channel. This practice was helpful not only to "bubble up" shared learner confusions and pause the lesson for clarification, but also for helpers to indicate "all seems good!" when the instructor didn't see learners' faces.

### Focus on fewer topics, and on exercises

We deliberately cut certain topics from lessons that we deemed inessential for our audience, but we would be even more aggressive in cutting next time.

Allot more time to interactive explanations and exercises, and less to follow-along typing. Even 50% of instructional time may be appropriate for an introductory workshop to devote to exercises. Learners appreciate having ample time to work on exercises before being guided through solutions.

Use formative assessment. Multiple-choice questions allowed rapid learner participation via the Zoom chat. One of the questions led to a productive discussion among learners that we bubbled back up to the instructor.

### Buffer the flow of instruction

Structure lessons around completing a series of exercises, not getting through follow-along content. Exercises provide buffer time. Couple this structure with the provision of printable lesson plans and reference sheets. Adhering to a set plan allows learners to catch up with instruction, and having reference material gives them a tool to refresh their memory during exercises.

Consider exploiting the non-need for instructor travel. We spread twelve hours of instruction over two weeks rather than two days. This chunking was requested by our host to better accommodate people tending to children/dependents and other scheduling constraints. It also had a knock-on effect of providing more buffering for participants to consolidate their learning. We additionally volunteered an hour of time the day before the workshop, and ten minutes before some sessions, to troubleshoot setup issues.

### Keep up the good work online

Participants mentioned both "online and flexible learning with the recording" and "hands on, you can ask for help anytime" as major strengths of the workshop. One said that "after taking many online classes, this by far rates the best for me." Thus, it is possible to adapt the battle-tested Carpentries lesson content and interactive, helper-amplified style to online delivery. We hope you find our learnings helpful in conjunction with the online-workshop recommendations collected [here](https://carpentries.org/online-workshop-recommendations/).


<a name="netpromoterscore">1</a>: NPS vary between -100 and +100 A positive NPS is deemed good, a NPS of 50 or above is deemed excellent, and a NPS of 70 or above is exceptional. While we find that a high NPS is often indicative of a workshop that went well, a lower NPS doesn't necessarily mean that the workshop didn't go well. You can find more information about the NPS on [Wikipedia](https://en.wikipedia.org/wiki/Net_Promoter).

<a name="codimd">2</a>: The Carpentries' etherpad server was unavailable one morning, so we switched to CodiMD mid-workshop.
