# Irclog::Parser

Its a small utility to parse IRCLogs files. This was tested against
the format created by
[IRC-Bot-Log-Extended](http://search.cpan.org/~fayland/IRC-Bot-Log-Extended-0.03/lib/IRC/Bot/Log/Extended.pm)
and may not work with different IRC logging strategies.

## Installation

Add this line to your application's Gemfile:

    gem 'irclog_parser'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install irclog-parser

## Usage

    irc_log = Irclog::Parser::Parser.new(log_file_path)
    # Available methods
    irc_log.channel  # channel name
    irc_log.messages # list of parsed messages
    irc_log.date     # date of the log

Check the specs directory for more informations on how to use it. The
code is still very short and simple, and should be easy enough to
follow along.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
