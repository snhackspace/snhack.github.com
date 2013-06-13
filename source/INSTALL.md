snhack.github.com
=================

__Note:  master branch is overwritten during compilation.__

This site is built with [octopress] and requires a ruby installation to render
the [source branch] to master.

[octopress]: http://octopress.org/docs
[octopress documentation]: http://octopress.org/docs/setup/
[source branch]: https://github.com/snhack/snhack.github.com/tree/source
[fork this repo]: https://github.com/snhack/snhack.github.com/fork_select
[pull request]: https://github.com/snhack/snhack.github.com/pulls


### Install Site Locally

A local installation allows changes to be previewed accurately, so they are rendered to
the live site as expected.  This is especially important when making changes to the site
itself, or submitting content that uses non-markdown extensions (such as those provided
by octopress and jekyll).

[Fork this repo], then clone your fork's **source branch** locally.

	git clone -b source git@github.com:<yourusername>/snhack.github.com.git snhack
	cd snhack
	ruby --version      # Should report Ruby 1.9.3


Install dependencies, but do not run `rake install` (it's been done already).

	gem install bundler rake
	rbenv rehash        # Only needed with rbenv
	bundle install

If you have any problems, see the [octopress documentation] for more info on installing
ruby and other dependencies.



### Adding and Previewing Changes

Creating a new topic branch is preferred, especially for changes to the site's
source (including templates and styles).

	git checkout -b myfix

Make your changes, such as a [new post or page] in [markdown] format.

	rake new_post["Zombie Ninjas Attack"]

	# Edit the new post created by rake
	nano source/_posts/2011-07-03-zombie-ninjas-attack.md

[new post or page]: http://octopress.org/docs/blogging
[markdown]: http://daringfireball.net/projects/markdown/dingus


Generate and preview your changes locally at `http://localhost:4000`.

	rake generate   # Generates posts and pages into the public directory
	rake preview	# Watches, and mounts a webserver at http://localhost:4000


Commit changes, then push them to your fork.

	git commit -am "That fix, for the thing."
	git push origin myfix

Submit a [pull request] to this repo (use the button shown on your new branch).

Once your changes are accepted, an admin will need to generate the site
using `rake deploy` before they become live.