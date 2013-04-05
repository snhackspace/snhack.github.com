snhack.github.com
=================

__Note:  master branch is overwritten during compilation.__

This site is built with [octopress] and requires a ruby installation to render the [source branch] to master.

[octopress]: http://octopress.org/docs
[octopress documentation]: http://octopress.org/docs/setup/
[source branch]: https://github.com/snhack/snhack.github.com/tree/source
[fork this repo]: https://github.com/snhack/snhack.github.com/fork_select



### Clone and Initialise

[Fork this repo], then clone your fork's **source branch** locally.

	git clone -b source git@github.com:<yourusername>/snhack.github.com.git snhack
	cd snhack
	ruby --version  		# Should report Ruby 1.9.3


Install dependencies, ``rake install`` is not required.

	gem install bundler
	rbenv rehash			# Only needed with rbenv
	bundle install

See the [octopress documentation] for more info or links for installing ruby.



### Adding Content

Create a [new post or page], usually as [markdown].

	rake new_post["Zombie Ninjas Attack"]
	# Creates source/_posts/2011-07-03-zombie-ninjas-attack.md

[new post or page]: http://octopress.org/docs/blogging
[markdown]: http://daringfireball.net/projects/markdown


Edit the new post with your favourite text editor.

	nano source/_posts/2011-07-03-zombie-ninjas-attack.md


Generate and preview your changes locally at ``http://localhost:4000``.

	rake generate   # Generates posts and pages into the public directory
	rake preview	# Watches, and mounts a webserver at http://localhost:4000


Commit changes to your fork, and submit a pull request to this repo.

Once your changes are accepted, an admin will need to preview them locally and run ``rake deploy`` before they become live.


### Ruby, gem, bundle… Whaaa?

Ruby is required to automate post generation, render the final site, and preview changes locally, etc.  When contributing very simple changes, you can add your text manually and skip the need for a ruby installation.

Github also allows for minimal editing and adding of content via it's web interface, useful for fixing typos when you don't have access to a local ``git`` installation.


### Super minimal way to add a post

> Note: This isn't the recommended way to add content to an octopress site.  Use only minimal formatting to be reasonably sure that your content renders correctly.  Your pull request may be rejected if it has serious rendering issues.

[Fork this repo], select the ``source`` branch within the new fork, and navigate to ``source/_posts``.

Use github to create a new file, naming it according to the pattern: ``YYYY-MM-DD-url-safe-title.md``.

Add [suitable yaml] front matter, your content as plain text (with simple [markdown formatting]), and hope that it will all render as expected.

Commit the new file to your fork, and submit a pull request to this repo.

[suitable yaml]: http://octopress.org/docs/blogging
[markdown formatting]: http://daringfireball.net/projects/markdown/basics
