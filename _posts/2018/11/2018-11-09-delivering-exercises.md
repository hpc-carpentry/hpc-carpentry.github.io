---
layout: page
authors: ["Toby Hodges"]
title: "Discussion Summary: Delivering Exercises to Learners"
date: 2018-11-09
time: "08:00:00"
category: ["Discussion sessions", "Exercises", "Lesson infrastructure", "Jupyter", "Socrative"]
---

On Wednesday 7th November, members of the community joined a themed
instructor discussion session to share experience and ideas around how we
deliver exercises to our learners during a lesson/workshop. Inspired by
[this excellent blogpost by Sarah Brown][sb-load-magic-blog], the 
[Instructor Development Committee][idc] wanted to leverage the experience of
other instructors on this important topic. Sarah, who also lead the discussion
in this session, also wanted to collect feedback and ideas to bring back to
the [Lesson Infrastructure Committee][lic] to inform their design choices when
updating our lesson template.

After taking some time for instructors to introduce themselves and answer questions from the
checking out trainees, Sarah gave an overview of her approach using IPython `%load`
magic with exercise code in a separate set of files to allow the instructor and
learners to pull up individual exercises on-demand in the Jupyter Notebook (see
the blogpost linked above for more details). Sarah has found this approach works
well, particularly for 'fill in the blanks' and Parson's Problem exercises,
where it helps learners to avoid additional difficulty that might be introduced
into an exercise by typo or indentation errors introduced while transcribing an
exercise from elsewhere.

There was general agreement within the group of instructors attending, that
it is best to avoid pointing learners directly to the full material
online while teaching a lesson - this can distract learners away from the
instructor and keep them from engaging with the code-along that's so
essential for learning.

Several of the attendees vouched for the effectiveness of [Socrative][socrative]
as a platform for providing exercises and pointed out that batches of
exercises can be uploaded to Socrative if they're compiled into e.g. an
Excel file. Other instructors provide exercises by copy-pasting into the
workshop etherpad or some other shared note-taking document (though some
have experienced problems with losing indentation when doing this), while
still others have had a good experience displaying exercises on slides
(see [this thread on TopicBox for more on this][delivering-exercises-thread]).

All of these approaches would be aided by an easy way to pull out exercises
in bulk from a given lesson. This might be achieved by storing
exercises in a separate directory in the lesson repository, which would
then be embedded into the HTML of the lesson when it is built. Alternatively,
exercises could be kept in the main body of the lesson markdown file but 
marked in a way that allows them to be parsed for extraction, which might be
easier to edit and maintain. Both options are being assessed
by the Lesson Infrastructure Committee (see [this GitHub Issue][delivering-exercises-issue]). 

The discussion finished with us listing other ideas for how exercises could
be provided, outside of the Jupyter environment that might not be suitable
for all the tools that we teach. Inspired by [Hypothes.is][hypothesis], 
Katrin Leinweber suggested that it could be useful to be able to select
different 'views' of a lesson, to switch between the full lesson, only 
the code snippets, exercises, and so on. Lex Nederbragt expressed a wish for a
quiz format to be introduced to Markdown, David Yakobovich listed several
existing (some paid) platforms that instructors might want to investigate,
including 
[Spectacle][spectacle],
[remoteinterview.io][ri.io], and 
[coderbyte][coderbyte].

If you have more ideas, or would like to continue contributing to this
discussion, join in the conversation on the [discuss thread][delivering-exercises-thread]
and/or check out the Lesson Infrastructure Committee's [Issue on the subject][delivering-exercises-issue]
on GitHub. Lastly, if you have requests or suggestions for a topic to be covered in
a future themed discussion session, please contact [Toby Hodges][th-email]. Keep
an eye out for more themed [discussion sessions][discussion-etherpad]
in the coming months!

[sb-load-magic-blog]: https://carpentries.org/blog/2018/09/teaching-tip-exercise-discussion/
[idc]: https://github.com/carpentries/instructor-development
[lic]: https://carpentries.org/lesson-infra/
[socrative]: https://socrative.com/
[delivering-exercises-thread]: https://carpentries.topicbox.com/groups/discuss/Tbc1a314b0f14bce5/discussion-session-on-delivering-exercises-to-learners
[hypothesis]: https://web.hypothes.is/
[spectacle]: https://github.com/FormidableLabs/spectacle
[ri.io]: https://www.remoteinterview.io/
[coderbyte]: https://coderbyte.com/
[delivering-exercises-issue]: https://github.com/carpentries/lesson-infrastructure/issues/22
[discussion-etherpad]: https://pad.carpentries.org/instructor-discussion
[th-email]: mailto:tbyhdgs@gmail.com

