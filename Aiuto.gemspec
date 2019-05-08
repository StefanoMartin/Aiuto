require "rake"

Gem::Specification.new do |s|
  s.name        = "aiuto"
  s.version	    = "0.0.1"
  s.authors     = ["Stefano Martin"]
  s.email       = ["stefano.martin87@gmail.com"]
  s.homepage    = "https://github.com/StefanoMartin/Aiuto"
  s.license     = "MIT"
  s.summary     = "For asking help to Google in easy way"
  s.description = "Google help me! Aiuto aiuto!"
  s.platform	   = Gem::Platform::RUBY
  s.require_paths = ["bin", "lib"]
  s.files         = FileList["bin/*", "lib/*", "Aiuto.gemspec", "LICENSE.md", "README.md"].to_a
  s.add_runtime_dependency "launchy", "~>2.4.3", ">= 2.4.3"
  s.executables << 'aiuto'
end
