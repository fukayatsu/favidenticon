# Favidenticon

favicon.ico generator

![](https://raw.github.com/fukayatsu/favidenticon/master/screenshots/5_2.png)

## Requirements

ImageMagick

## Installation

Add this line to your application's Gemfile:

    gem 'favidenticon'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install favidenticon

## Usage

```
$ favidenticon
#=> show usage

$ favidenticon generate
#=> generate favicon.ico (16x16)

$ favidenticon g 'foo bar baz'
#=> generate favicon.ico from given string

$ favidenticon g --size=48
#=> generate favicon.ico (48x48)

$ favidenticon g --grid=5
#=> generate favicon.ico which has 5 grids
```

## Contributing

1. Fork it ( http://github.com/<my-github-username>/favidenticon/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
