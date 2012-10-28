require_relative '../../../lib/irclog-parser/parser'

require 'spec_helper'

describe Irclog::Parser::Parser do
  subject { Irclog::Parser::Parser.new(log_fixture("lolchannel_20120103")) }

  it "should parse the channel name" do
    subject.channel_name.should == "lolchannel"
  end

  it "should parse the date" do
    subject.date.should == Date.new(2012, 01, 03)
  end

  context "when the log file does not exist" do
    it "should raise an error" do
      expect { Irclog::Parser::Parser.new(log_fixture("notexisting_20120103.logs")) }.to raise_error
    end
  end
end
