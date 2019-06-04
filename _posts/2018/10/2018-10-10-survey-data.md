---
layout: page
authors: ["François Michonneau", "Tracy Teal", "Jonah Duckles"]
title: "Re-evaluating the Anonymity of Our Workshop Survey Data"
date: 2018-10-10
category: ["privacy", "assessment", "survey data"]
comments: true
---

Recently we discovered some potential issues with our survey data, and we are re-evaluating how we store, share, and analyse answers from our pre- and post-workshop surveys. While data from these surveys is anonymised, we realised that there are situations where demographic data can be used to identify a participant’s individual responses. We have taken steps to update our workflow and ensure a stronger anonymisation of the workshop survey responses. Below, we document the issues and how we are changing our processes moving forward. 

## What happened

As part of our assessment activities, we keep an unaltered version of the data files (the raw output from the survey software) we use in our analyses. The unaltered version of these files are cleaned, anonymised, and used as the data input for our assessment reports.

We received a report that one of our scripts, published in a public repository, included links that provided public access to some of these unaltered files that were hosted in a private repository. When requesting the raw version of a file from a private repository, GitHub generates a token and appends it to the URL of the file. This token provides temporary public access to the file. This means that for less than 3 weeks, between July 24th and August 13th, 2018, the unaltered data was publicly accessible to anyone who used the URL and token. These particular datasets included: the responders’ IP addresses, the workshop attended, and the text from open-ended questions that are part of our pre- and post-workshop surveys.

While reviewing our practices with handling and analysing survey data, we realised that while survey data is collected anonymously, and therefore does not include such information as names, access to the raw data could allow the association of gender and ethnic information with other answers of the survey. Therefore, answers from under-represented individuals at a particular workshop could have been identified. 

## How we are changing our processes

We apologise for this oversight. We take the anonymity of the results of our surveys seriously and we are working on implementing a series of changes in workflows. We have turned off IP address collection for our surveys, as we do not use this information. We are also decoupling the demographic and survey response data, and have removed publicly available data from our GitHub repository. We have deleted any relevant files, re-written the history of the ‘assessment’ repository to address any potential issues and communicated with anyone who had forks of the repository. We made “master” a protected branch in the assessment repository which means that any changes will have to go through a pull request that will need to be approved by at least one person. During these workflow updates, survey assessment data will not be available. However, open data is a core part of our assessment efforts, and our next report and data release will include the data in the decoupled format. We are working on educating members of our staff and our community in best practices to work with survey data while maintaining reproducible workflows and consistently reviewing practices to update and ensure anonymity. We know this topic is of general interest to our community as well, so as we develop general recommendations, we will make these publicly available.

If you have any questions about how we work with survey data, please do not hesitate to contact us at [team@carpentries.org](mailto:team@carpentries.org).
