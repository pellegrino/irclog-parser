require 'spec_helper'

describe Irclog::Parser do
  let(:irclog) do
    Class.new { extend Irclog::Parser }
  end

  describe "load_directory(dir)" do
    subject { irclog.load_directory(log_fixture_path) }

    its(:size) { should eql 2 }

    it "should retrieve every channel present at the log files" do
      subject.collect(&:channel_name).should include 'lolchannel', 'blank'
    end

    it "should not include non log files" do
      subject.collect(&:channel_name).should_not include 'nonlogfile'
    end
  end

  describe "load_file(file)" do
    subject { irclog.load_file(log_fixture("blank_20110831")) }

    it "should retreive the channel" do
      subject.channel_name.should eql 'blank'
    end
  end
end
