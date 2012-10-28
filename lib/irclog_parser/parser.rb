require_relative 'message_line'

module Irclog
  module Parser
    class Parser
      def initialize(log_path)
        @log_path = log_path
        @log_file = File.open(log_path)
      end

      def channel_name
        @log_path[/([\w]*)_/, 1]
      end

      def date
        date = @log_path[/_([\d]{8})/, 1]
        Date.parse(date)
      end

      def messages
        @log_file.lines.collect do |line|
          MessageLine.new(line) unless is_blank_line?(line)
        end
      end

    private
      def is_blank_line?(line)
        line == "..."
      end
    end
  end
end
