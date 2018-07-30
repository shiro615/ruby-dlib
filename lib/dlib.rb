require "gobject-introspection"

require "dlib/version"

module DLIB
  class Loader < GObjectIntrospection::Loader
  end

  Loader.load("DLIB", self)

  class Image
    alias_method :initialize_raw, :initialize
    def initialize(filename)
      if filename.respond_to?(:to_path)
        filename = filename.to_path
      end
      initialize_raw(filename)
    end
  end
end
