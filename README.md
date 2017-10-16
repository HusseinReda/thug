# Thug

Thug resolves all the system level dependencies for you project, by generating the "Gemfile.lock" it fetches the needed dependencies and proceeds to install it.

# Dependencies

* [Json](https://rubygems.org/gems/json): for parsing json responses.
* [Ohai](https://github.com/opscode/ohai): to detect platform, platform version.
* [Thor](https://github.com/erikhuda/thor): for command-line utlilties.


## Installation

Install the gem via terminal using: 

    $ gem install thug

## Usage

Navigate to ruby project then run thug list to list all needed system dependencies:

	$ thug list

To install dependencies run

	$ thug install

## Development

Checkout the project and run 

	$ gem build thug.gemspec

## Contributing

Thug gem relies on users to keep its system dependencies list up to date, Bug reports and pull requests are welcome on here. or you can [Sign up](http://13.15.15.166:1337/register) at [Thug-Gem](http://13.15.15.166:1337)Thug-gem and start adding gems/dependencies.

## License

The gem is available as open source under the terms of the [MIT License](http://opensource.org/licenses/MIT).

## Code of Conduct

Everyone interacting in the Thug project’s codebases, issue trackers, chat rooms and mailing lists is expected to follow the [code of conduct](https://github.com/sherifalaa55/thug/blob/master/CODE_OF_CONDUCT.md).
