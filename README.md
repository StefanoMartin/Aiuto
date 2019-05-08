Aiuto [![Gem Version](https://badge.fury.io/rb/aiuto.svg)](https://badge.fury.io/rb/aiuto)
==================================

Aiuto means "help" in Italian. This is a gem to help you to search easily on Google by filtering on specific websites.

Install the gem with:

```
gem install aiuto
```

Then try it with:

```
aiuto Ruby is awesome
```

YEAH! Google is open and there are only Ruby blogs, forums and similia. No pages about stones and jewels!

## Which websites do you use for filtering?

This is the list of websites used in the gem.
However by default only the websites under "blog", "git", "docs" and "social" are used by default.

```ruby
{
  blog: ["rubyflow.com", "medium.com", "rubylearning.com",
    "rubyinside.com", "yehudakatz.com", "sitepoint.com/ruby",
    "afreshcup.com", "rubyguides.com", "justinweiss.com",
    "sandimetz.com", "guides.railsgirls.com"],
  git:  ["github.com", "gitlab.com"],
  docs: ["ruby-doc.org", "devdocs.io/ruby", "rubydoc.info",
    "guides.rubyonrails.org"],
  social: ["stackoverflow.com/questions/tagged/ruby",
    "ruby-forum.com", "reddit.com/r/ruby", "reddit.com/r/rails"],
  utility: ["ruby.libhunt.com"],
  rails: ["opensourcerails.com", "guides.rubyonrails.org",
    "reddit.com/r/rails",
    "stackoverflow.com/questions/tagged/ruby-on-rails"],
  beginner: ["eloquentruby.com",
    "pragprog.com/book/ruby4/programming-ruby-1-9-2-0",
    "ruby.learncodethehardway.org/book",
    "http://mislav.uniqpath.com/poignant-guide/",
    "https://www.manning.com/books/rails-4-in-action",
    "railstutorial.org/book"],
  advanced: ["patshaughnessy.net", "confidentruby.com",
    "pragprog.com/book/ager/exceptional-ruby", "rubyfu.net"]
}
```

If you want to use different filters you can use "-f" followed by the filter you want to use.
Like this:

```
aiuto Rails is awesome -f rails beginner
```

In this case we filter by using the websites in the group "rails" and "beginner".

## Do you have other commands like "-f" ?

Yes! I provide ```-no``` to remove all the filters, and ```-r``` to remove the word "ruby" from the search.

Futher I add ```aiuto --help``` for helps on the terminal and ```aiuto --list``` for returning the above list.

## Hey! I want to use DuckDuckGo or other filters

Please create issue or do some pull requests for any idea you have.  
I am more than welcome to improve this gem with your help. :smile:
