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
    end
  end
end
