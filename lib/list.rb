module Aiuto_Helper
  LIST = {
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
  LIST[:main] = LIST[:blog] | LIST[:docs] | LIST[:git] | LIST[:social]
  LIST[:no]  = []
end
