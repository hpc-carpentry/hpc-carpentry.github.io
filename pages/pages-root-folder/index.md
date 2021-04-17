---
# Use the widgets beneath and the content will be
# inserted automagically in the webpage. To make
# this work, you have to use › layout: frontpage

layout: frontpage
header:
  image_fullwidth: header_unsplash_12.jpg
widget1:
  title: "What we do"
  url: 'https://hpc-carpentry.org/about'
  icon: "fas fa-laptop"
  text: >
    HPC Carpentry teaches HPC-oriented coding, and data science skills to
    researchers. We want to work towards bringing High Performance Computing
    under the Carpentries umbrella. Workshop hosts, Instructors, and learners
    must be prepared to follow the Carpentries
    <a href="http://docs.carpentries.org/topic_folders/policies/code-of-conduct.html">
    Code of Conduct</a>.
widget2:
  title: "Get involved"
  url: 'https://carpentries.org/join/'
  icon: 'fas fa-comment-dots'
  text: >
    There are several ways to participate. Join the conversation on
    <a href="https://swc-slack-invite.herokuapp.com/">Slack</a>, where we
    talk shop. Follow us on <a href="https://twitter.com/hpccarpentry/">
    Twitter</a> for announcements. Best of all, you can
    <a href="/help-wanted/">help us out</a> with some beginner-friendly
    edits. Welcome!
widget3:
  title: "Who we are"
  url: 'https://carpentries.org/about'
  icon: 'fas fa-users'
  text: >
    Our diverse, global community includes scientists, engineers, system
    administrators, and <a href="/community/">computing enthusiasts of all
    stripes</a>.

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
