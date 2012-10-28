$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require 'irclog_parser'

RSpec.configure do |config|
  def log_fixture(file_path)
    File.expand_path "spec/fixtures/#{file_path}.log"
  end
end
