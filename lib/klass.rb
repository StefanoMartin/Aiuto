class Aiuto
  include Aiuto_Helper

  def initialize(obj)
    case obj
    when String
      @obj = obj
    when Method
      @obj = obj.receiver + "#" + obj.name
    when Class, Module
      @obj = obj.to_s
    else
      @obj = obj.to_s
      @obj = @obj.class.to_s if @obj.to_s[0..1] == "<#"
    end
  end

  def google(type: [], no: false, ruby: true)
    sites = []
    type = [type] unless type.is_a?(Array)
    type = [] if no
    type.each do |t|
      sites |= LIST[t.to_sym]
    end
    sites = sites.map{|s| "site:"+s}.join(" OR ")
    url = "www.google.com/search?q="+sites
    url += " ruby" if ruby
    url += " "+@obj.gsub("#", "%23")
    Launchy.open(url)
  end
end
