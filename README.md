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

The IndianConstitution gem aims to be a comprehensive and easily accessible resource for developers. Here's a look at our planned features and future potential:

**Short-Term Goals:**

-   **Keyword Search:** Implement functionality to search articles by keywords, making it easier to find relevant constitutional provisions.
-   **Amendments and Schedules:** Incorporate detailed information about constitutional amendments and schedules, providing a complete picture of the Indian Constitution.
-   **Command-Line Interface (CLI):** Develop a CLI tool for quick lookups and easy access to constitutional data directly from the terminal.
-   **Demo Rails Application:** Build a sample Rails application to demonstrate how the gem can be integrated into web projects, showcasing its capabilities for web integration.

**Rails API Development:**

This gem can be a powerful tool for building Rails-based APIs that serve constitutional data. Developers can leverage its structured data to:

-   Create endpoints that provide specific articles, parts, or schedules of the Constitution.
-   Build applications that require citation or reference to constitutional texts, such as legal tech platforms, educational tools, or news applications.
-   Develop features that allow users to search and navigate the Constitution within their applications.

**AI Agent Integration:**

Structured and machine-readable access to legal documents like the Indian Constitution is invaluable for the development of AI agents. This gem can facilitate:

-   **Training Data for LLMs:** Provide a clean and organized dataset for training Large Language Models (LLMs) on legal texts, improving their understanding and generation of legal content.
-   **Legal Research Tools:** Enable AI agents to perform sophisticated legal research by querying and analyzing constitutional provisions.
-   **AI-Powered Legal Assistance:** Support the creation of AI tools that can help citizens understand their rights and legal professionals in their work by providing quick access to relevant constitutional articles.
-   **Natural Language Processing (NLP):** Serve as a foundational dataset for NLP tasks related to legal document analysis, summarization, and comparison.

**Future Vision:**

We envision the IndianConstitution gem evolving into an even more powerful resource with features such as:

-   **Multilingual Support:** Provide access to the Constitution in multiple Indian languages.
-   **Integration with Other Legal Data Sources:** Connect with other legal databases and resources to offer a more holistic legal information platform.
-   **Advanced Analytical Features:** Implement tools for comparing different versions of articles (post-amendment), tracking the evolution of specific laws, and identifying related provisions.
-   **Community Contributions:** Foster a community around the gem to encourage contributions, such as adding case law annotations or scholarly commentary.

We are excited about the potential of this gem and welcome contributions and suggestions from the community to make it even better!


