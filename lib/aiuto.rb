require "launchy"
require_relative "list"
require_relative "klass"

class Aiuto
  def self.to_table(arr, splice=3)
    l = []
    arr = arr.map{|a| a += ", "}
    arr[-1][-1] = ""
    arr[-1][-1] = ""
    arr = arr.each_slice(splice).to_a
    arr.each{|a| a[0] = "   " + a[0]}
    arr.each{|r|r.each_with_index{|f,i| l[i] = [l[i]||0, f.length].max}}
    arr.each{|r|r.each_with_index{|f,i| print "#{f.ljust l[i]} "};puts ""}
  end

  def self.cli(*args)
    args = args[0]
    case args[0]
    when "--help"
      print "===== AIUTO HELP ======\n"
      print "Welcome to Aiuto. Simply write \"aiuto Ruby is awesome\" and I will do a search for you on Google on some Ruby blog or website.\n"
      print "Keep in mind that Google permits a maximum search of 32 words (OR is not counted as a word).\n\n"
      print "-f, --filter \t Change filter followed by \"blog\", \"git\", \"docs\", \"social\", \"utility\", \"rails\", \"beginner\", or \"advanced\".\n"
      print "\t Like this: \"aiuto 'rack queue' -f blog git docs.\n\n"
      print "-no, --no-filter \t Use plain google\n\n"
      print "-r, --no-ruby \t Remove word ruby\n\n"
      print "--list \t List of the used libraries\n\n"
      print "Aiuto means Help in Italian! :D\n\n"
      print "========================\n"
    when "--list"
      print "========= AIUTO LIST ===========\n"
      Aiuto_Helper::LIST.each do |k,v|
        next if [:all, :no, :main].include?(k)
        print "#{k.to_s.upcase}: \n"
        to_table(v)
      end
      print "================================\n"
    else
      words = []
      blogs = []
      to_blog = false
      to_word = true
      no = false
      ruby_word = true
      args.each do |word|
        case word
        when "-f", "--filter"
          to_blog = true
          to_word = false
        when "-no", "--no-filter"
          to_blog = false
          to_word = false
          no = true
        when "-r", "--no-ruby"
          ruby_word = false
        else
          if to_word
            words << word
          elsif to_blog
            blogs << word
          end
        end
      end
      blogs = [:main] if blogs.empty?
      words = words.join(" ")
      blogs = blogs.map(&:to_sym)
      Aiuto.new(words).google(type: blogs, no: no, ruby: ruby_word)
    end
  end
end
