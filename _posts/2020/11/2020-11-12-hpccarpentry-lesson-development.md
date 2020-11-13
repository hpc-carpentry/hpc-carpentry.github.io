---
layout: page
title:  "Applying lesson development design principles"
authors: ["Alan O'Cais", "Peter Steinbach"]
date: 2020-11-12
time: "00:10:00" 
teaser: "Thinking about the practical application of Bloom's Taxonomy"
tags: ["Community", "Lesson development"]
---

## A Workshop with CodeRefinery

Together with CodeRefinery ([1]), we helped to organise
a variant of an instructor training workshop for the
EU HPC Centres of Excellence ([2]) with a clear focus on HPC related material and teaching. We discussed lesson design a number of times during this workshop. In the course of action, there were a few interesting things we realised which this blog post is about - most notably Bloom's Taxonomy to formulate learning objectives.

The motivation to look at this was mostly spurred by Greg Wilson's great book, "Teaching Tech together", [4]. [Here](https://teachtogether.tech/en/index.html#s:process-objectives), Greg defines:

> Objectives vs. Outcomes
> 
> A learning objective is what a lesson strives to achieve. A learning outcome is what it actually achieves, i.e. what learners actually take away. The role of summative assessment is therefore to compare learning outcomes with learning objectives.

So we want to describe what we want to teach and what we want our learners to pick up. Typically, each carpentries' episode encodes this in the `yaml` frontmatter part of every lesson episode. For example, the [shell-novice](https://github.com/swcarpentry/shell-novice) defines the following objectives for the [lesson module "Navigating Files and Directories"](https://raw.githubusercontent.com/swcarpentry/shell-novice/gh-pages/_episodes/02-filedir.md):

```
objectives:
- "Explain the similarities and differences between a file and a directory."
- "Translate an absolute path into a relative path and vice versa."
- "Construct absolute and relative paths that identify specific files and directories."
- "Use options and arguments to change the behaviour of a shell command"
- "Demonstrate the use of tab completion, and explain its advantages."
```

## A guide to formulate learning objectives

[Bloom's taxonomy and other taxonomies](https://teachtogether.tech/en/index.html#s:process-objectives) offer a structure or guideline, to help a lesson designer and teacher to formulate these learning objectives. Bloom's taxonomy itself comprises 6 concepts which can be paired with verbs that help guide the process.

**Remembering:** Exhibit memory of previously learned material by recalling facts, terms, basic concepts, and answers. (recognize, list, describe, name, find)

**Understanding:** Demonstrate understanding of facts and ideas by organizing, comparing, translating, interpreting, giving descriptions, and stating main ideas. (interpret, summarize, paraphrase, classify, explain) 

**Applying:** Solve new problems by applying acquired knowledge, facts, techniques and rules in a different way. (build, identify, use, plan, select) 

**Analyzing:** Examine and break information into parts by identifying motives or causes; make inferences and find evidence to support generalizations. (compare, contrast, simplify) 

**Evaluating:** Present and defend opinions by making judgments about information, validity of ideas, or quality of work based on a set of criteria. (check, choose, critique, prove, rate) 

**Creating:** Compile information together in a different way by combining elements in a new pattern or proposing alternative solutions. (design, construct, improve, adapt, maximize, solve) 

## An HPC inspired exercise

During the aforementioned workshop, I asked all participants to imagine they want to teach learners about `scp` or `ssh` (participants were able to choose). The workshop participants were split in teams and asked to  formulate learning objectives guided by Bloom's Taxonomy for the topic they chose.

As a teacher (Peter), I expected the native English speakers to complete this task with ease and the non-native speakers to struggle. The following is directly copied from the workshops hackmd pad. 

### Remembering 

 * ssh: name the command and list it's parameters
 * scp: Name the basic structure of a scp call: `command source destination` 
 * ssh: Can the student explain what does the `ssh` acronym stand for?

### Understanding

 * ssh: explain what the command does
 * scp: Paraphrase the similarity of SCP to CP - across physical limits of computers.

### Applying

 * ssh: use the command to log in to a new cluster / server
 * scp: Use SCP to transfer a set of files or folders 

### Analyzing

 * ssh: compare the local environment to the remote environment (to contrast source and destination machine)
 * scp: Compare : compare to rsync and ability to know when to to use which (simplify this!)

### Evaluating

 * scp: Rate approaches to share scientific data (cloud versus shared folder on parallel filesystem versus central [ftp] server)
 * ssh: choose whether to use ssh to do a given task

### Creating

* ssh: solve a security problem using ssh
* scp: Design an approach to share scientific data to more than 3 destinations (on a daily basis).
* ssh: Can the student modify the following ssh command to be able to log-in directly into the directory /home/dir1?: `ssh username@login.hpc.xxx.xx.uk`

## How to "Bloom's Taxonomy"

To my interpretation, all participants struggled with this task irrespective of their English speaking capabilities. So learners asked me, how I would approach. I provided two hints: 

1. Categories in Bloom's taxonomy builds up on each other. Take this prioritised list: Remembering, Understanding, Applying, Analyzing, Evaluating, Creating. If learners don't remember the content that was taught, it will be hard for them to exhibit understanding. For learners to apply content, e.g. to new examples or domains, they first need to understand the content taught. I told my participants that I try to balance these categories mostly by the context of the course I am designing. For example, in the context of carpentries' workshops, the volume to teach is often quite large and the time to dive into details is hardly ever available. Hence, I would limit myself to "Remembering, Understanding, Applying" for designing and organising my lessons. Anything in the higher categories, "Analyzing, Evaluating, Creating" I often consider a bonus.

2. I typically judge my formulation of learning objects by how amendable they are to create assessments from them. In other words, a learning objective in the very first categoriy of the taxonomy __Remember__ like "At the end of this module, learners remember how to use SCP." is way too broad of a formulation to help guide me in creating lessons and produce tangible assessments. I'd rather suggest to put it like so: "At the end of this module, learners recognize the use of scp for transferring single files or entire folders." This formulation lend's itself to create two assessments or exercises.

##  A testimony of a participant

For me (Alan), I realised that I had never really considered Bloom's taxonomy
beyond an abstract sense. When it was time to leverage it during one of the exercises
to set lesson objectives, I struggled to apply it in a practical way. It raised
questions for me about what level(s) of the taxonomy we are supposed to target
in lesson episodes. After the workshop, and for this blogpost, I read up on this
a little and came across a post from the University of Arkansas ([3])
that helped me to grasp the key points in the use of the taxonomy:
* You set Lesson Objectives for the overall lesson that target a particular level of
  the taxonomy. For HPC Carpentry, this is most likely the "Applying" level.
* In your lesson episodes you should follow the principle (trivially adapted from ([3]))
  > Use Bloom’s Taxonomy to make sure that the verbs you choose for your (episode)
  > level objectives build up to the level of the verb that is in the (lesson) level
  > objective. The (episode) level verbs can be below or equal to the (lesson) level
  > verb, but they CANNOT be higher in level. For example, your (lesson) level verb
  > might be an Applying level verb, "illustrate." Your (episode) level verbs can be
  > from any Bloom’s level that is equal or below this level (applying,
  > understanding, or remembering).

## A summary and a request

Bloom's taxonomy appears high level at first sight. Once you sit down and try to employ it, a lesson designer can be guided by their use more effectively and better formulate learning goals. The letter are expected to offer more tangible guidance once you design the teaching material in question.

How do you feel about Bloom's taxonomy and how we put it to use for creating learning goals for `scp` and `ssh`? Feel free to leave a comment below or join the discussion on the hpc-carpentry slack channel.

## References

[1]: https://coderefinery.org/
[2]: https://www.hpccoe.eu/
[3]: https://tips.uark.edu/using-blooms-taxonomy/
[4]: https://teachtogether.tech/en/index.html
