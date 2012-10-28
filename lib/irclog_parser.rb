require "irclog_parser/version"
require "irclog_parser/parser"

module Irclog
  module Parser
    extend self

    def load_directory(dir)
      Dir[dir + '/*.log'].map do |file|
        Parser.new(file)
      end
    end

    def load_file(file)
      Parser.new(file)
    end
  end
end
