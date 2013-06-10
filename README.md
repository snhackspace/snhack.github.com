snhack.github.com
=================

__Note:  master branch is overwritten during compilation.__

Please see the [INSTALL](INSTALL.md) file for full details on how to build and
preview this site locally.


### Super minimal way to add a post

> Use this workflow when submitting a blog post using standard text or markdown.

Visit this project's [source branch] on the github.com website, and load
the [source/_posts] folder.

[source branch]: https://github.com/snhack/snhack.github.com/tree/source
[source/_posts]: https://github.com/snhack/snhack.github.com/tree/source/source/_posts

Use the [new file icon] that's located above the folder listing.
Github will automatically fork this project as required.

Name the new file using your preferred post date and title,
according to the pattern: `YYYY-MM-DD-url-safe-title.md`.

[new file icon]: https://github.com/blog/1327-creating-files-on-github
[naming it]: https://github.com/blog/1436-moving-and-renaming-files-on-github

Enter basic [post metadata], followed by your content as plain text or [markdown].
See [this example post] for a template.

[Markdown] is used to add rich text such as headers, italics and links.
Various tools exist to [preview markdown], the main difference being that the rendered
post will have a title header added instead of the raw metadata.

[this example post]: https://raw.github.com/snhack/snhack.github.com/source/source/_posts/_examples/2012-11-06-example-post.md
[preview]: https://github.com/snhack/snhack.github.com/blob/source/source/_posts/_examples/2012-11-06-example-post.md

Use the `Propose New File` button to save the post and add it to a pull request.
Ensure the base branch is set to this repo's `source` branch, review the changes
being sent (especially the `Files Changed` tab), then hit `Send pull request`.

[post metadata]: http://octopress.org/docs/blogging
[markdown]: http://daringfireball.net/projects/markdown/basics
[preview markdown]: http://daringfireball.net/projects/markdown/dingus

An admin will need to accept the pull request and regenerate the site.
