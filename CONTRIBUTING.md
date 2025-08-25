# Contributing

Like the official [Carpentries][c-site] sites---[Software
Carpentry][swc-site], [Data Carpentry][dc-site], and
[Library Carpentry][lc-site]---[HPC Carpentry][hpcc-site]
is an open source project, and we welcome
contributions of all kinds: blog posts, fixes to existing material,
bug reports, and reviews of proposed changes are all welcome.

## Contributor Agreement

By contributing, you agree that we may redistribute your work under
[our license](LICENSE). Everyone involved in
[HPC Carpentry][hpcc-site] agrees to abide by our
[code of conduct][conduct].

## How to Contribute a Fix or Suggested Change

The easiest way to get started is to file an issue to tell us about a
spelling mistake, some awkward wording, or a factual error. This is
a good way to introduce yourself and to meet some of our community
members.

1. If you do not have a [GitHub][github] account, you can send
   comments to the [community email list][discuss-list].
   However, we will be able to respond more quickly if you use one of
   the other methods described below.

2. If you have a [GitHub][github] account, or are willing to
   [create one][github-join], but do not know how to use Git,
   you can report problems or suggest improvements by
   [creating an issue][issues].
   This allows us to assign the item to someone and to respond
   to it in a threaded discussion.

3. If you are comfortable with Git, and would like to add or change
   material, you can submit a pull request (PR).

## Where to Contribute

1. If you wish to change the website, please work in
   <https://github.com/hpc-carpentry/hpc-carpentry.github.io>,
   which can be viewed at <https://hpc-carpentry.org>.

2. If you wish to change CSS style files, tools, or HTML boilerplate
   for lessons or workshops stored in `_includes` or `_layouts`,
   please work in <https://github.com/carpentries/carpentries.org>
   (on which this website is based).

## How to Contribute a Blog Post

1. If you wish to contribute a blog post, please work in
   <https://github.com/hpc-carpentry/hpc-carpentry.github.io>,
   which can be viewed at <https://hpc-carpentry.org>.
  
2. Posts go in the `_posts` folder, which is divided up first by
   year, e.g. `2018`, and then by month, e.g. `04`. Be sure to start
   creating your file in the correct folder.

3. Posts need to be created in [Markdown][md-guide] and named
   according to this convention (all-lower-case filenames are
   preferred):

   `YYYY-MM-DD-filename.md`

   e.g.,

   `2017-07-10-assess_report.md`

4. In order to render correctly, posts need to have a header block,
   which should be [created like this example][hdr-block]:

   ```yaml
   ---
   layout: page
   authors: ["Tracy Teal", "Maneesha Sane", "Belinda Weaver"]
   title: "Launching our New Handbook"
   teaser: "Find new pathways to a range of Carpentries material"
   date: 2018-04-11
   time: "9:00:00"
   tags: ["Communications"]
   ---
   ```

   Separate the header block from the post proper by a new line.
   You can leave the `time` field as-is or set it to a meaningful
   value. Please make your best effort to accurately populate the
   rest of the fields.

5. If there is more than one author, separate the quoted author
   names using commas, like this:

   ```yaml
   ["Name 1", "Name 2"]
   ```

   Separate any tags the same way.

6. Images should be uploaded to the appropriate year in the
   `files/<year>/<month>` folder. Images should be linked using
   Markdown, and paths to the image should be relative. Example:

   ```markdown
   ![Image Description]({{ site.filesurl }}/2017/07/myimage.jpg "alt text")
   ```

   A web link should be used for images hosted elsewhere.
   Example:

   ```markdown
   ![Image Description](https://web_address/pathway_to_full_image_filename)
   ```

   If you are not sure how to add images in Markdown format,
   look at an existing Carpentries post with a
   [locally hosted image][md-img-local] or
   [one with a web link][md-img-remote] and copy the formatting
   from there.

7. Once you have previewed your file, commit the Markdown file to
   your fork and start a Pull Request. We automatically run tests
   using [GitHub Actions][actions] on your Pull Requests. Please
   review your pull request a few minutes after you've submitted it
   to make sure those tests have passed. These tests look for valid
   YAML headers and make sure that the post will build properly.
  
## Other Resources

General discussion of [HPC Carpentry][hpcc-site] happens on the
[discussion mailing list][discuss-list], which everyone is welcome
to join. You can also [reach the maintainers by email][contact].

<!-- HPCC links -->

[actions]: https://github.com/hpc-carpentry/hpc-carpentry.github.io/actions
[conduct]: https://docs.carpentries.org/topic_folders/policies/code-of-conduct.html
[contact]: mailto:maintainers-hpc@lists.carpentries.org
[discuss-list]: https://carpentries.topicbox.com/groups/discuss-hpc
[issues]: https://github.com/hpc-carpentry/hpc-carpentry.github.io/issues/
[hpcc-site]: https://www.hpc-carpentry.org

<!-- Outside links -->

[c-site]: https://carpentries.org
[dc-site]: https://datacarpentry.org/
[github-join]: https://github.com/join
[github]: http://github.com
[hdr-block]: https://github.com/hpc-carpentry/hpc-carpentry.github.io/blob/967908bd97f2e30f34185ad98d575a9125754b01/_posts/2024/08/2024-08-13-llnl-workshop-blog-post.md?plain=1#L1
[lc-site]: https://librarycarpentry.org/
[md-guide]: https://guides.github.com/features/mastering-markdown/
[md-img-local]: https://github.com/carpentries/carpentries.org/blob/5524366743246303aa1dd80343dd4759685b44e9/_posts/2017/06/2017-06-19-mqu-ttt.md?plain=1#L29
[md-img-remote]: https://github.com/carpentries/carpentries.org/blob/5524366743246303aa1dd80343dd4759685b44e9/_posts/2017/07/2017-07-10-assess_report.md?plain=1#L24
[swc-site]: http://software-carpentry.org/
