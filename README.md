snhack.github.com
=================

__Note:  this branch is overwritten during compilation.__

---

### To add content to this site

[fork this repo] and follow the [setup instructions], substituting your own [source branch].

    git clone -b source git@github.com:yourusername/snhack.github.com.git snhack
  
initialise the site, without installing the default theme.

    cd snhack
    gem install bundler
    rbenv rehash    # If you use rbenv, rehash to be able to run the bundle command
    bundle install


Edit or make [new posts/pages] (http://octopress.org/docs/blogging/).

    rake new_post["Zombie Ninjas Attack"]
    # Creates source/_posts/2011-07-03-zombie-ninjas-attack.md

Generate and preview your changes locally at ``http://localhost:4000``

    rake generate   # Generates posts and pages into the public directory
    rake preview    # Watches, and mounts a webserver at http://localhost:4000

[fork this repo]: https://github.com/snhack/snhack.github.com/fork_select
[source branch]: https://github.com/snhack/snhack.github.com/tree/source
[setup instructions]: http://octopress.org/docs/setup/

Commit changes to your fork and submit a pull request to this repo.
