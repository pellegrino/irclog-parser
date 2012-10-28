# -*- encoding: utf-8 -*-
lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'irclog-parser/version'

Gem::Specification.new do |gem|
  gem.name          = "irclog-parser"
  gem.version       = Irclog::Parser::VERSION
  gem.authors       = ["Vitor Pellegrino"]
  gem.email         = ["vitorp@gmail.com"]
  gem.description   = %q{Parses IRCLog log files}
  gem.summary       = %q{TODO: Write a gem summary}
  gem.homepage      = ""

  gem.files         = `git ls-files`.split($/)
  gem.executables   = gem.files.grep(%r{^bin/}).map{ |f| File.basename(f) }
  gem.test_files    = gem.files.grep(%r{^(test|spec|features)/})
  gem.require_paths = ["lib"]

  gem.add_development_dependency 'rspec'
end
