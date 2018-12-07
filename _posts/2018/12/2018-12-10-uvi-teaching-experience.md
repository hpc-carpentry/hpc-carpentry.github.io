---
layout: page
authors: ["Kunal Marwaha", "Kevin Vilbig"]
teaser: "Teaching at the University of the Virgin Islands"
title: "Unique multi-site teaching experience via virtual shared conference"
date: 2018-12-10
time: "09:00:00"
category: [ "Workshops", "UVI"]
comments: true
---

## Location 
The Virgin Islands are located about three hours south of Florida, against the Caribbean Sea and the Atlantic Ocean. The University (UVI) has a campus on each of the two most populous islands, St. Croix and St. Thomas. These islands were colonized by Europeans for two hundred years and are still territories of the United States. Most residents today are Afro-Caribbean. 

## Sponsor
[South Big Data Hub (SBDH)](https://southbigdatahub.org/) is a new data science initiative, run by Georgia Tech. They have a contract with The Carpentries to run workshops at many universities in the Southeastern United States. They also planned a *Train the Trainers* session this year to enable the same universities to teach their own workshops.

SBDH uses their own workshop assessments and photo release forms. They asked the instructors to show [4 short videos](https://www.youtube.com/watch?v=ZsysnlwVE2Q&index=1&list=PLyUNw5pgUji9KbfYpehNxpogbhoUCNVlt) on data science and to take a group photo. The initiative also set up a [JupyterHub cluster](http://sbdh.space) for the learners, so we used that for the Python portion.

## Before the workshop

The workshop had learners across two UVI campuses, so we planned for a virtual conference room so each instructor could teach to both campuses. Kevin travelled to St. Croix and Kunal to St. Thomas; SBDH provided for travel and lodging. One representative from SBDH (Carolyn Young) also attended the second day of the workshop at UVI St. Thomas campus.

Kevin and Kunal also had a call with a technologist (Aleksandr Blekh) from SBDH. He was very friendly and helped us navigate the JupyterHub cluster and answered all our questions. Learners can use the Jupyter notebooks and JupyterLab interface on remote HPC managed via GitHub OAuth tokens and Docker instances. How handy is that? This cloud system allows anyone who has been through an SWC workshop to access HPC resources without them needing to learn new tools on top of what we teach (i.e. `ssh`). HPC site supervisors don't need to manage \*nix logins manually.

## During the workshop

Overall, the learners seemed to enjoy and benefit from the workshop. Because neither campus had too many learners, we could tailor the pacing and material to the audience. Many learners are undergraduates and had interest more broadly in programming as opposed to the standard SWC focus on plotting statistics or writing reproducible research software.

This was a smaller workshop than most other sites the instructors have taught. We had about 20 total learners between the two sites, so when we split up the second day, including a bit of attrition, each instructor had a class size less than ten.

### Installs, Internet, JupyterHub
At St. Croix, the host faculty held an "install-fest" where learners could set up software before the workshop. Those who didn't attend got things installed relatively quickly on Day 1 morning. This was very helpful!

Each of us used a host's WiFi login, but because of the networking issues, Kevin used his personal cellular tether for most of the day. Considering how many sites use basement meeting rooms underneath the university library, it's good that UVI St. Thomas' library was on top of a hill and the meeting room had a great view!

* At St. Croix, Internet was slower than Kunal was used to, and computers moved more slowly (they took more time than expected to launch an Internet browser and to download files), but he accommodated by slowing down during these parts.

* In St. Thomas, the SBDH cloud instances did not end up working on site because of networking problems. Kevin used it because he had a cellular data tether, but we fell back on local installs of Anaconda. As a welcome surprise, most of the students had it installed and running before he arrived on Thursday.


### Video-link (dual-campus workshop)
Using the video link, we had intermittent connection loss. We would lose audio, screenshare video, and the room video.  These technical issues caused us to delay the workshop by 45 minutes. Video issues persisted on the St. Croix side throughout the first day. For example, Kunal could not see the other campuses's learners while teaching, but the learners could see him. 

To avoid losing time on technical problems that could be used for instruction, Kevin and Kunal decided to teach the second day (already reduced time from 9am-3pm) as separate workshops (i.e. no video link; both instructors teaching at each campus for the whole day). 
* At St. Croix, the host professor and helpers were also learners for most of the material, so Kunal (the instructor) also played the role of helper. It was manageable because of the class size (6 including host).
* There were student learners and also a number of helpers and faculty observers at UVI St. Thomas, but it was manageable to teach solo on Friday with the small class size. Teaching this much material in a day would be significantly more difficult with a larger class. 

Regardless, when the video link was working properly it was great to virtually share space between two different Caribbean islands.


### Problems / Things to improve
* change a properties file to get git bash to open (removing `--cd-to-home` did the trick.) Same learner had issues with Git, because the HOME environment variable had an extra quote in it. Error looked like `\/config not recognized` and took some time to fix.
* video connection / share screen issues were most of the problems (45min delayed start, calling-in, restarting calls (can't see learners or instructors), and various issues throughout the day. For example, Kunal taught the second half of the UNIX shell lesson without seeing the learners in St. Thomas (but those learners could see him). So there was a lot less visual feedback to see if the learners were keeping up or following along.
* In St Croix, Kunal should have encouraged people to sit toward the front. Due to computer placement to get the display cables working, I had to teach where the camera to St. Thomas was pointing left of me, and I had people in front and in right and partially behind me! Basically teaching with a 360 audience and I couldn't give people eye contact without my back pointing at someone else. Much harder to read facial expressions and check if people were on track.
* Kevin - I suspect most of the technical issues were caused by the bad network in the St. Thomas lab, which seemed to be a known networking issue with the WiFi hotspot that covers this room, so we need to make sure the local organizers diagnose and solve those kinds of issues prior to the workshop, especially if we are trying to do a multi-site video link or other bandwidth-intensive activities.

## Feedback
### Positive Feedback
* very informative. I learned a lot in a day
* learning cmds
* coding
* I like the GitHub lessons
* was excellent. learned a great deal of information.
* understanding gitbash well enough to explain it (and ask questions) to someone who already knows it
* bash - easy and very undsrstandable, broken down and had time for us to understand
* thorough walkthrough and instruction
* everything was well put together. content easy to understand and programs don't give us difficulty
* learned different ways of navigating profiles and directories, learned how to code
* hands on of the special coding for Git Bash, programming concepts
* snacks, breaks scheduled well, good simple introduction
* good simple intro to Python
* good job explaining the scope, good resources
* very collaborative, good feedback, answered questions well
* learned about the use of ; and the use of range
* good repetitive practice and relative examples
* great exercises, great explanation, great knowledge
#### Critical Feedback
* Git needed more of a breakdown, not enough time to fully understand it
* 2nd half of the class was too fast, too much detail
* more examples needed
* not enough collaboration
* more exercises
* slow down
* student did not understand sorting and pipes / filters
* long class, cramped 2 day session
* had trouble with understanding for loops
* need to explain each command, especially how it works
* didn't learn enough about why to do things
* UVI internet (everything else was great)
* internet connection
* the command lines are hard to remember
* no bad comment except UVI Internet & Technological issues


## Conclusion
This was a meaningful experience for both of the instructors. Our participants enjoyed the workshop and the hosts were ecstatic about applications in their research projects and prospects for future employment and education. These fundamental programming skills unlock "super-powers" that anyone can learn!
