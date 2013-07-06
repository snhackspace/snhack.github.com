# Monkeypatch for Jekyll
# Set 'recurring_title: true' in a post to use an alternative permalink format
module Jekyll

  class Post

    # retain reference to original method
    alias_method :_permalink_dated_retained_template, :template

    def template
      if self.data['recurring_title'] == true
        # use permalink_dated if defined in _config.yml
        site.config['permalink_dated'] || "/blog/:year-:month-:day-:title/"
      else
        # call original method
        _permalink_dated_retained_template
      end
    end

  end

end
