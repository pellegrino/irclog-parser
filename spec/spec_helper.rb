$LOAD_PATH.unshift(File.dirname(__FILE__))
$LOAD_PATH.unshift(File.join(File.dirname(__FILE__), "..", "lib"))

require 'irclog_parser'

RSpec.configure do |config|
  def log_fixture(file_path)
    File.expand_path "#{log_fixture_path}/#{file_path}.log"
  end

  def log_fixture_path
    "spec/fixtures"
  end
end
