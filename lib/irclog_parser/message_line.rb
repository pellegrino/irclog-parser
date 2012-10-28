module Irclog
  module Parser
    class MessageLine
      attr_reader :line

      def initialize(line)
        @line = line
      end

      def time
        @line[/\s(\d{2}:\d{2})/, 1]
      end

      def channel
        @line[/(\#\w+)\s\d{2}:\d{2}\]/, 1]
      end

      def user
        user = @line[/\s<(\w+)>\s/, 1]
        user.nil? ? @line[/\[\#\w+\s\d{2}:\d{2}\]\s[\w]+:\s(.+)\z/, 1] : user
      end

      def message
        @line[/\[\#\w+\s\d{2}:\d{2}\]\s<\w+>\s(.+)\z/, 1]
      end
    end
  end
end
