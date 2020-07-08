---
layout: page
authors: ["Jane Koh"]
teaser: "This post covers instructors' experiences running a four-day online Software Carpentry workshop at the University of Washington"
title: "Outlining a Successful Virtual Software Carpentry Workshop on Zoom"
date: 2020-06-15
time: "09:00:00"
tags: ["Online Workshops"]
---

![Software Carpentry-Day 2 Git tutorial. Instructor: Bernease Herma]({{ site.urlimg }}/blog/2020/06/SWC-Online-Carpentry-workshop.png)
_Software Carpentry-Day 2 Git tutorial. Instructor: Bernease Herman_

Amid the COVID-19 pandemic, a team of Data and Research Scientists at the University of Washington eScience Institute and the Department of Astronomy were able to hash out and test the logistics of running a four-day Software Carpentry Workshop with 20 participants using only Zoom and slack. The following is an outline of what worked for our group with added context.

### Pre-Software Setup  

Participants were emailed beforehand to follow the instructions in the setup section of the [workshop website](https://uwescience.github.io/2020-05-11-uw-online/) for installing all Git, Bash, a text editor and Python components. Additionally, we provided these instructions to make sure their installation for git and bash worked:
- open git-bash on Windows, or the terminal app on Mac and type `ls `
  - this should show you the folders in your current directory 
- Type `Git`
  - this should show the documentation for the git command

We also invited the participants to join the zoom meeting 30 minutes prior to the start of the first day if they needed installation assistance.

### Communication amongst organizers and with participants:

On [The Carpentries Slack](https://swcarpentry.slack.com/#/) workspace, we set up a channel that served as a place for all organizers to communicate before, during, and after workshops. The instructors shared their breakout exercises before their workshop for helpers to familiarize themselves with ahead of time. The helpers also asked questions in the channel if they were confused about anything themselves. As a coordinator of operations, I used the slack channel to share feedback from participants and other insights each day to quickly implement changes needed in how we structured our workshop for the next day.<br />

There was a debate over what we should use to have participants ask questions. At the end of the day, the majority of organizers didn’t want to add in another component such as hackMD/etherpad/google doc or make the participants download and familiarize themselves with slack. Although it would’ve been great to have threading in our messages with participants (which Zoom doesn’t provide), we also deemed this level of organization and a record of all questions weren’t needed.<br />

Thus, we used zoom chat to communicate with participants during the tutorials and encouraged participants to plop in any questions they had. However, there was a slight issue on the first day as participants asked a lot more questions than anticipated, which resulted in frustrations from other participants who indicated through our anonymous feedback form that they found it distracting having the instructor stop and start often to address questions. We also fell behind schedule and didn’t get through the whole tutorial. Thus, we quickly changed our approach the next day in having all questions during the tutorial directed to the 2-3 helpers online that day. I split up the roster by the number of helpers and said each morning, “If the first letter of your name starts with \_ through\_, your helper today is \___\. Please find him/her now in your chat and send them a quick hello.” This ended up solving the issue and also provided participants with more one-on-one help while lowering interruptions for the instructor and the class.<br />

But also, stay flexible as tutorial leads can have different teaching styles. Our Python II instructor expressed that she actually preferred to receive questions while she was teaching. In particular, conceptual sorts of questions. So we found a happy medium in still splitting up the class and designating participants to specific helpers, but also letting them know that if they had any conceptual questions, the instructor preferred those to be directed to her in the chat. This worked out great as the instructor wasn’t bombarded with every type of question, but the sort of _why?_ questions she did receive enhanced her lesson and added a sense of engagement.<br />

Also, offer a simple and anonymous feedback form (we used google forms) to participants at the end of each day through which they can leave any comments/concerns. The feedback we received at the end of each tutorial was useful in implementing any needed changes. We only got positive feedback the final day which went by unsurprisingly the smoothest.

### Reading and engaging a zoom audience

With an audience of blackened screens for the majority of the time, it was another challenge finding ways to read the room. Here are three key things that helped:
- Attendees can click “Participants” on the bottom and a list of all participants in the room will pop up on the right side. Each participant has a set of different buttons they can click. Anytime the instructor wanted, he/she asked the participants to click the green checkmark to indicate that they were following along okay or the red X to indicate that they weren’t. All instructors were also made co-hosts and had the ability to clear the queue. Use this over the thumbs up and clap reactions as those disappear after a couple seconds.

- Encourage participants to enable their cameras, particularly when they go into breakout groups. As they do in person, facial expressions, hand gestures, etc. all contribute to making the experience feel more engaging. Share this virtual etiquette guideline to participants on the first day and reinforce throughout if needed.

- On the first day, some of the helpers shared that participants seemed disinterested in doing the exercises in breakouts. So the next day, we tried and found it helpful to start out the breakout groups with each participant briefly introducing themselves by sharing their name and research field.

### Structuring Breakouts

Try to maintain no more than a 1:5 helper-participant ratio for breakout groups. For our entire workshop, we had helpers automatically placed into breakout groups to lead the exercises. However, this ended up not being ideal as it was counterintuitive in the goal of participants applying what they’ve learned and solving the exercises independently with added peer learning. So next time, we plan to split the breakouts into groups no larger than 5 participants with the helpers (co-hosts) staying outside in the main room until people press the “Ask for help” button. At that point, the host will assign an available helper into the breakout room so they can go in. Note that only main hosts can see when someone presses the “Ask for help” button.<br />

To help break the ice, the participants should also be provided the guidelines of enabling their cameras and starting each meeting out briefly going around introducing themselves in popcorn fashion. Participants will need to have the exercises shared with them before they go into their groups. So plan on having google doc links to the exercises ready to share in the chat beforehand.<br />

Our breakouts were each 15 minutes long and consisted of a couple exercises. Not all groups got through all the exercises, but most helpers still agreed that having 1-2, 15-minute exercises per tutorial felt just about right. Participants also left positive feedback in our anonymous forms that they found the breakouts helpful, especially on days we had more helpers so that we could split the groups up even smaller.

### Role of Main Host   

One thing to be aware of with Zoom is that there can only be one main host while there can be an unlimited number of co-hosts. As we discovered during a technical test and run through session (which we strongly recommend your team does prior to the workshop as well), the host and co-host have [different controls](https://support.zoom.us/hc/en-us/articles/201362603-Host-and-co-host-controls-in-a-meeting). The main host is also the only one who can create and end breakout groups and move freely in and out of any of them. Meanwhile, co-hosts can only move in and out of the breakout rooms they’ve been assigned to.<br />

Try to appoint the main host role to someone on your team who isn’t an instructor or helper. That way, they can focus on the technical details of Zoom and have breakout rooms sorted and ready to go. Here’s a list of tasks this role would have:

- Tech support (mute participants unknowingly contributing background noise)
- Point out any questions to the instructor that they’ve missed from a participant in the chat (if they prefer to have questions directed to them during the tutorial)
- At the beginning of each day, divide the roster using the first letter of the participants’ names by the number of helpers, and have them direct their questions to an assigned helper throughout the tutorial.
- Lead a debrief at the end of each day with the instructor and helpers to address any challenges they experienced.
- Share feedback form with class each day and relay insights to next group of instructors and helpers
- Ensure all helpers have the exercises ahead of time and that instructors have each shared a clear and defined schedule for their teaching day that indicates where to expect breakouts. (They should also factor in 10-15 minutes coffee breaks every 1.5 hours of teaching)
- Timekeeping
- Configuring breakout rooms

### Zoom quirks to be aware of:

- Zoom sometimes changes its features without warning. For instance, I went in at the start of the first few meetings renaming helpers to have the word “Helper” by their names, but this feature was removed for hosts on the third day of our workshop.
- If one of the co-hosts enters the meeting before you, they’re automatically made a host. They can give the host permission back by clicking “More” and then “Make host” next to your name in the participants tab.  
- The hand clap and thumbs up reactions disappear after a few seconds. Instead of using these to survey and check in with the audience, walk everyone through clicking “participants” on the toolbar. All participants will then pop up on the right side with button options. Anytime the instructor wants, he/she can ask the participants to click the green checkmark to indicate they’re following along okay or the red X to indicate that they aren’t. Co-hosts also have the ability to clear the queue.
- The breakout sessions can be randomly sorted or manually. They also have timers that can be set. If you have the emails of every participant ahead of time, you can use the breakout room pre-assign feature when setting up the meeting.
