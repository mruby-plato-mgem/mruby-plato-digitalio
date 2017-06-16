# mruby-plato-digitalio   [![Build Status](https://travis-ci.org/mruby-plato/mruby-plato-digitalio.svg?branch=master)](https://travis-ci.org/mruby-plato/mruby-plato-digitalio)
Plato::DigitalIO class
## install by mrbgems
- add conf.gem line to `build_config.rb`

```ruby
MRuby::Build.new do |conf|

  # ... (snip) ...

  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-gpio'
  conf.gem :git => 'https://github.com/mruby-plato/mruby-plato-digitalio'
end
```

## example
```ruby
io = Plato::DigitalIO.new(0)
p io.read   # -> 0 or 1
io = Plato::DigitalIO.new(1)
io.write(1)
```

## License
under the MIT License:
- see LICENSE file
