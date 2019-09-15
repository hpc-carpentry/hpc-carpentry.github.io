---
layout: page-fullwidth
title: "What is a Carpentries Workshop?"
permalink: /workshops/
---



<p>The Carpentries develops and teaches in-person, interactive, hands-on, two-day workshops for learning core data science and coding skills. Carpentries workshops are
taught by volunteer <a href="{%link pages/instructors.html%}">Instructors</a>, <a href="http://carpentries.github.io/instructor-training/">trained in pedagogy</a>, who focus on creating a motivating and engaging environment for learners. All our lessons are open source, hosted on <a href="https://github.com">GitHub</a>, and collaboratively developed by our volunteer community.  All participants are required to abide by <a href="https://docs.carpentries.org/topic_folders/policies/index_coc.html">The Carpentries Code of Conduct</a>. </p>

<p>A global team of <a href="{% link pages/regional_coordinators.html %}">Regional Coordinators</a> support the coordination of workshop activity and community building in regions around the world. Check out the <a href="{% link pages/regional_coordinators.html %}">Regional Coordinators</a> page to learn more about The Carpentries community in different parts of the world. </p>

<p>
Check out our <a href="/upcoming_workshops/">upcoming</a> and <a href="/past_workshops/">past</a> workshops.
</p>

<ul>
  <li><a href="#workshop-curriculum">Workshop Curriculum</a></li>
  <li><a href="#workshop-organising">Organising a Workshop</a></li>
  <li><a href="#workshop-core">Core Requirements for a Workshop</a></li>
  <li><a href="#workshop-cost">Workshop Cost</a></li>
  <li><a href="#workshop-upcoming">Upcoming Workshops</a></li>
</ul>


<hr>

<div class="row">

  <h3 align="center">Carpentries by the numbers</h3>

<div class="medium-4 columns">
<div class="callout-wrap-large">
<div class="callout-circle">

<span>{% include numbers_with_commas.html  number=site.data.badges_stats.n_instructors decimals=0 ts="," %}
</span>

</div>
<h3 align="center">instructors</h3>
</div>
</div>

<div class="medium-4 columns">
<div class="callout-wrap-large">
<div class="callout-circle">

{% assign learner_count = site.data.all_past_workshops | size | times: 25 %}

<span>{% include numbers_with_commas.html number=learner_count decimals=0 ts="," %}</span>

</div>
<h3 align="center">learners</h3>
</div>
</div>

<div class="medium-4 columns">
<div class="callout-wrap-large">
<div class="callout-circle">

{% assign workshop_count = site.data.all_past_workshops | size %}

<span>{% include numbers_with_commas.html number=workshop_count decimals=0 ts="," %}</span>

</div>
<h3 align="center">workshops</h3>
</div>
</div>
</div>

<p>
<small><i>* Learners count is estimated based on average workshop attendance of 25.</i></small>

</p>

<div>
  

</div>

<!-- The ids for each section are before the hr so that the heading doesn't get covered by menu bar
 -->

<a id="workshop-curriculum"></a>

<hr>



<h2><i class="fas fa-laptop"></i> Workshop Curriculum</h2>
<br>
The Carpentries project comprises three lesson programs: <a href="https://datacarpentry.org">Data Carpentry</a>, <a href="https://librarycarpentry.org">Library Carpentry</a>, and <a href="https://software-carpentry.org">Software Carpentry</a>. If you need assistance deciphering which curriculum to use for your workshop, please <a href="/workshops-curricula/">read descriptions of our curricula</a> or check out the curriculum material on the lesson program pages linked below.

<br><br>

<div class="row">

  <div class="medium-4 columns">
  <p>  
    <img src="{{ site.urlimg }}/logos/dc.svg">
  </p>
  </div>

  <div class="medium-4 columns">
  <p>
    <img src="{{ site.urlimg }}/logos/lc.svg"> 
  </p>
  </div>

  <div class="medium-4 columns">
  <p>
     <img src="{{ site.urlimg }}/logos/swc.svg">
  </p>
  </div>

</div>


<div class="row">

  <div class="medium-4 columns">
  <p>
    <a href="https://datacarpentry.org/lessons/">Data Carpentry workshops</a> are domain-specific, and focus on teaching skills for working with data effectively and reproducibly.
  </p>
  </div>

  <div class="medium-4 columns">
  <p>
    <a href="https://librarycarpentry.org/lessons/">Library Carpentry workshops</a> focus on teaching software and data skills for people working in library- and information-related roles. The workshops are domain-agnostic though datasets used will be familiar to library staff.
  </p>
  </div>

  <div class="medium-4 columns">
  <p>
    <a href="https://software-carpentry.org/lessons/">Software Carpentry workshops</a> are domain-agnostic, and teach the Unix shell, coding in R or Python, and version control using Git.
  </p>
  </div>

</div>

<div align="center">
<a class="button small radius prev" href="/">Request a Carpentries workshop</a>
</div>




<a id="workshop-organising"></a>

<hr>

<h2><i class="fas fa-tasks"></i> Organising a Workshop</h2>

<br>

<p>The Carpentries offers two types of workshops: <b>Centrally-Organised</b> and <b>Self-Organised</b>.</p>



<h4>Requesting a Centrally-Organised Workshop</h4>
<br>
<p>
Centrally organised workshops are organised by The Carpentries Workshop Administration team for a <a href="#workshop-cost">fee</a>. The <a href="{% link pages/regional_coordinators.html %}">Regional Coordinator</a> for your region will assist with locating and coordinating instructors for the workshop. We ask that you request Centrally-Organised workshops at least 2-3 months before your desired workshop date. To learn more about the process for organising a workshop please review the  <a href="https://docs.carpentries.org/topic_folders/hosts_instructors/hosts_instructors_checklist.html">Workshop Checklist</a>.
</p>


<div align="center">
<a class="button small radius prev" href="/">Request a Carpentries workshop</a>
</div>


<h4>Notification of a Self-Organised Workshop</h4>
<br>
<p>
The Carpentries welcomes you to organise and run your own workshop. This means you are already connected with our <a href="{%link pages/instructors.html%}">certified Instructors</a> and will work with them on all aspects of workshop organisation. When planning a Self-Organised workshop we ask that you complete the self organised workshop notification form to notify us of your planned workshop so that we can <a href="{%link pages/upcoming_workshops.html%}">add your workshop to our website</a> and provide support (in the form of survey result links and AMI instances for Genomics workshops) for your workshop. To learn more about the process for organising a workshop please review the  <a href="https://docs.carpentries.org/topic_folders/hosts_instructors/hosts_instructors_checklist.html">Workshop Checklist</a>. There is no administrative fee due to The Carpentries for running a self-organised workshop.
</p>


<div align="center">
<a class="button small radius prev" href="/">Notify us of a self-organised workshop</a>
</div>


<a id="workshop-core"></a>
<h4>What are the requirements for a Carpentries workshop?</h4> 
<br>
<p>A Carpentries workshop must meet the following requirements: </p>
<ul>
<li>Teach a lesson program's core curriculum</li>
<li>Have at least one <a href="{%link pages/instructors.html%}">certified instructor</a> </li>
<li>Use <a href="/assessment">The Carpentries surveys</a> to get evaluations</li>
<li>Abide by <a href="https://docs.carpentries.org/topic_folders/policies/index_coc.html">The Carpentries Code of Conduct</a>.</li>
</ul>

<h4>What are the Core curricula for a Carpentries Workshop?</h4> 

<br>
Official Carpentries workshops meet the workshop requirements listed above, including teaching a lesson program's core curriculum. The core curriculum for each lesson program is listed below:
<br><br>

<div class="row">

  <div class="medium-4 columns">
  <p>  
    <img src="{{ site.urlimg }}/logos/dc.svg">
  </p>
  </div>

  <div class="medium-4 columns">
  <p>
    <img src="{{ site.urlimg }}/logos/lc.svg"> 
  </p>
  </div>

  <div class="medium-4 columns">
  <p>
     <img src="{{ site.urlimg }}/logos/swc.svg">
  </p>
  </div>

</div>


<div class="row">

  <div class="medium-4 columns">
  <p>
    <a href="https://datacarpentry.org/lessons/">Data Carpentry workshops</a> should include a lesson on data organisation and at least three other lessons from that curriculum.
  </p>
  </div>

  <div class="medium-4 columns">
  <p>
    <a href="https://librarycarpentry.org/lessons/">Library Carpentry workshops</a> should teach any three lessons from the Library Carpentry curriculum.
  </p>
  </div>

  <div class="medium-4 columns">
  <p>
    <a href="https://software-carpentry.org/lessons/">Software Carpentry workshops</a> should teach the Unix Shell, Version control with Git, and one programming language (Python or R).
  </p>
  </div>

</div>

<p>
If you teach a workshop that does not follow the core curriculum we would still like to know about it! You can complete the <a href="">Self-Organised Notification Form</a> and we will be sure to get it listed on <a href="{%link pages/upcoming_workshops.html%}">The Carpentries webpage</a>.
</p>




<div align="center">
<a class="button small radius prev" href="/">Inquire about a Carpentries workshop</a>
</div>

 <a id="workshop-cost"></a>
<hr>

<h2><i class="far fa-money-bill-alt"></i> Workshop Cost</h2>

<br>

Our instructors are volunteers, and so are not paid for their teaching, but host sites are <b>required to cover travel and accommodation costs for any instructors</b>.

<ul>
<li>The total cost of hosting a workshop is both the Workshop Administration Fee and travel expenses for the two instructors.</li>
<li>This fee is used to support staff time with this partnership. You will be provided with exceptional customer service and timely support from our Workshop Administration Team and Regional Coordinators. </li>
</ul>

<h4>Workshop Administration Fee (Government and non-profit institutions):</h4>
<ul>
  <li>$2500 US <i>(Applies only to Centrally-Organised workshops being coordinated outside of a <a href="/membership/">Carpentries membership</a>)</i></li>
  <li>The Carpentries staff will recruit instructors to teach your workshop and will assist with managing registration, if needed. </li>
  <li>To keep workshops accessible, The Carpentries will take responsibility for standard fees that arise due to an organisation’s location outside of the US. We see this as good business practice within a global community.</li>
</ul>

<h4>Workshop Administration Fee (For Profit):</h4>
<p>For information on fees for for-profit organisations, please <a href="mailto:team@carpentries.org">contact us</a>. 50% of workshop coordination fees for for-profit organisations go towards supporting workshops in areas with financial need. </p>

<p>
All invoices will be issued by <a href="https://communityin.org/">Community Initiatives</a>, our fiscal sponsor. The Carpentries staff will work with host sites to manage the invoicing process.
</p>


<h4>Workshop Administration Scholarship</h4>
<p>Scholarships may be available for workshops that reach new or under-served communities. If you are interested in hosting a Centrally Organised workshop and would like to request assistance covering the fee, please complete the <a href="#">Workshop Request Form</a>. Select the option <i>“I am requesting a scholarship to waive the administrative fee”</i> and answer the required questions. If a scholarship is awarded, the host will still be responsible for the instructor travel expenses. </p>

<h4>Travel Expenses for Instructors:</h4>
All Instructors are volunteers, but the Host needs to cover their travel expenses. We work to find local instructors, but suggest that you estimate about $2000 total ($1000 per Instructor) for the travel, food, and accommodation of the instructors. The details of how you will reimburse the instructors need to be established when the workshop is scheduled. <b>The Carpentries is not involved in this process.</b>

<hr>

<h3><i class="fas fa-smile" id="workshop-contact"></i> Contact Us</h3>
<p>
If have more questions you would like to speak to someone in your region about The Carpentries to learn more about our workshops before making a request, we invite you to contact your <a href="{% link pages/regional_coordinators.html %}">Regional Coordinator</a> or complete the <a href="">Inquiry Form</a> and someone will contact you. 
</p>

 <a id="workshop-upcoming"></a>

<hr>

<h2>Upcoming workshops</h2>


   <div class="row">
        <div class="medium-12 columns">
      {% assign workshop_list = site.data.all_upcoming_workshops %}
      {% include workshop_table.md %}
    </div>
    </div>

    Check out our <a href="/past_workshops/">past workshops here</a>.

<hr>


