# IndianConstitution

A Ruby gem providing structured access to the Indian Constitution's articles, amendments, and schedules. Designed for legal tech, news platforms, educational tools, and AI applications, this gem allows developers to easily retrieve and work with constitutional data. Inspired by the creator's UPSC background, this project aims to bridge legal knowledge and technology for broader accessibility.

Welcome to your new gem! In this directory, you'll find the files you need to be able to package up your Ruby library into a gem. Put your Ruby code in the file `lib/indian_constitution`. To experiment with that code, run `bin/console` for an interactive prompt.

## Installation

The gem is not yet published to RubyGems.org as it’s in early development. To use the gem, install it directly from the GitHub repository by adding the following to your `Gemfile`:

```ruby
gem 'indian_constitution', git: 'https://github.com/nizam12khan/indian-constitution-gem.git'
```
Then run 
```bundle install```

Install the gem and add to the application's Gemfile by executing:

```bash
bundle add indian_constitution
```

If bundler is not being used to manage dependencies, install the gem by executing:

```bash
gem install ./indian_constitution-0.1.0.gem
```

## Usage

Load the gem and retrieve constitutional articles by number:
```ruby
require 'indian_constitution'

# Get Article 21
article = IndianConstitution.get_article(21)
puts article['title']    # "Protection of life and personal liberty"
puts article['content']  # "No person shall be deprived of his life or personal liberty except according to procedure established by law."
```
More features (e.g., keyword search, CLI, amendment history) are planned for future releases.

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake spec` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

To set up the project for development:

Clone the repository:
```bash
git clone https://github.com/nizam12khan/indian-constitution-gem.git
cd indian-constitution-gem
```
Install dependencies:```bin/setup```

Run tests:```rake spec```

Experiment with the gem in an interactive console:```bin/console```

To install the gem locally for testing:```bundle exec rake install```

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/[USERNAME]/indian_constitution. This project is intended to be a safe, welcoming space for collaboration, and contributors are expected to adhere to the [code of conduct](https://github.com/[USERNAME]/indian_constitution/blob/master/CODE_OF_CONDUCT.md).

## License

The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the IndianConstitution project's codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/[USERNAME]/indian_constitution/blob/master/CODE_OF_CONDUCT.md).

## Roadmap

- Add search functionality for articles by keyword.
- Include amendment history and schedules.
- Build a CLI for quick lookups.
- Create a demo Rails app to showcase web integration.


