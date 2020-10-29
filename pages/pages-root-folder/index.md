---
#
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage
#
layout: frontpage
header:
  image_fullwidth: header_unsplash_12.jpg
widget1:
  title: "What we do"
  url: 'https://hpc-carpentry.org/about'
  icon: "fas fa-laptop"
  text: 'HPC Carpentry teaches HPC-oriented coding, and data science skills to researchers. We want to work towards bringing High Performance Computing under the Carpentries umbrella. Workshop hosts, Instructors, and learners must be prepared to follow the Carpentries <a href="http://docs.carpentries.org/topic_folders/policies/code-of-conduct.html">Code of Conduct</a>.'
widget2:
  title: "Who The Carpentries are"
  url: 'https://carpentries.org/about'
  icon: 'fas fa-users'
  text: 'Our diverse, global community includes <a href="/instructors/">Instructors</a>, helpers, <a href="/trainers/">Trainers</a>, <a href="/maintainers/">Maintainers</a>, <a href="https://carpentries.org/mentors">Mentors</a>, community champions, <a href="/members/">member organisations</a>, supporters, workshop organisers, <a href="/team/">staff</a> and a whole lot <a href="/community/">more</a>.'
widget3:
  title: "Get involved"
  url: 'https://carpentries.org/join/'
  icon: 'fas fa-comment-dots'
  text: 'See all the <a href="/volunteer/">ways you can engage</a> with HPC Carpentry and The Carpentries. Get information about upcoming events such as workshops, meetups, and discussions from the <a href="/community/#community-events">community calendar</a>, or from the twice-monthly <a href="/newsletter/">newsletter</a>, <em>Carpentry Clippings</em>. Follow us on <a href="https://twitter.com/hpccarpentry/">Twitter</a> or join the conversation in <a href="https://swc-slack-invite.herokuapp.com/">Slack</a>.'
#
# Use the call for action to show a button on the frontpage
#
# To make internal links, just use a permalink like this
# url: /getting-started/
#
# To style the button in different colors, use no value
# to use the main color or success, alert or secondary.
# To change colors see sass/_01_settings_colors.scss
#
#callforaction:
#  url: https://tinyletter.com/feeling-responsive
#  text: Inform me about new updates and features ›
#  style: alert
permalink: /index.html
#
# This is a nasty hack to make the navigation highlight
# this page as active in the topbar navigation
#
homepage: true
---
