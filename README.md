# README

## Name

Ruby Dlib

## Description

Ruby Dlib is a Ruby bindings of Dlib. Ruby Dlib is based on GObject Introspection.

[Dlib][dlib] is a computer vision library.

[GObject Introspection][gobject-introspection] is a middleware for language bindings of C library. GObject Introspection can generate language bindings automatically at runtime.

Ruby Dlib uses [Dlib GLib][dlib-glib] and [gobject-introspection gem][gobject-introspection-gem] to generate Ruby bindings of Dlib.

Dlib GLib is a C wrapper for Dlib. GObject Introspection can't use Dlib directly because Dlib uses C++. Dlib GLib is a bridge between Dlib and GObject Introspection.

gobject-introspection gem is a Ruby bindings of GObject Introspection. Ruby Dlib uses GObject Introspection via gobject-introspection gem.

## Install

Install Dlib GLib before install Ruby Dlib.

Install Ruby Dlib after you install Dlib GLib:

```text
% gem install ruby-dlib
```

## Usage

```ruby
require "dlib"

# TODO
```

## Dependencies

  * [Dlib][dlib]

  * [Dlib GLib][dlib-glib]


## License

[Boost Software License][Boost Software License]. See LICENSE for details.

[dlib]:http://dlib.net/

[gobject-introspection]:https://wiki.gnome.org/action/show/Projects/GObjectIntrospection

[dlib-glib]:https://github.com/shiro615/dlib-glib

[gobject-introspection-gem]:https://rubygems.org/gems/gobject-introspection

[Boost Software License]:https://www.boost.org/users/license.html
