$LOAD_PATH.unshift(File.join(__dir__, "lib"))
require "dlib/version"

Gem::Specification.new do |spec|
  spec.name = "ruby-dlib"
  spec.version = DLIB::VERSION
  spec.homepage = "https://github.com/shiro615/ruby-dlib"
  spec.authors = ["Yosuke Shiro"]
  spec.email = ["ys2014hs@gmail.com"]

  spec.summary = "Ruby Dlib is a Ruby bindings of Dlib."
  spec.description = "You can use computer vision features in Ruby."
  spec.license = "Boost Software License"
  spec.files = ["Rakefile", "Gemfile", "#{spec.name}.gemspec"]
  spec.files += Dir.glob("lib/**/*.rb")

  spec.extensions = ["dependency-check/Rakefile"]

  spec.add_runtime_dependency("gobject-introspection")

  spec.add_development_dependency("bundler")
  spec.add_development_dependency("rake")
  spec.add_development_dependency("test-unit")
end
