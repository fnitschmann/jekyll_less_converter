jekyll_less_converter
=====================

This is a [less](http://lesscss.org/) converter plugin for [Jekyll](http://jekyllrb.com).

It offers you an easy converter for .less files in your Jekyll project folder and converts them all into comporessed .css files.

---
## Installation

#### 1. Step

You need two Gems to use the converter, ```therubyracer``` and ```less```. Add them to your projects ```Gemfile``` or install them manualy by hand

Gemfile:

```ruby
 
gem 'therubyracer'

gem 'less' 
```

Run bundler:

```bundle install```


By hand:


```gem install therubyracer && gem install less```

#### 2. Step

Place ```less_converter.rb``` under ```[your_page]/_plugins``` directory.

---
## Usage

Place your .less files somewhere in your Jekyll project, e.g. under ```[your_page]/css/style.less```.

Then run and start your Jekyll server with ```jekyll serve```

Now you can find your compressed and converted less files under ```[your_page]/_site/css/style.css```

---
## License

See ```LICENSE``` file

> Copyright © 2013 Florian Nitschmann