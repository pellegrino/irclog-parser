require 'spec_helper'

describe Irclog::Parser::MessageLine do
  context "when its a normal message" do
    subject { Irclog::Parser::MessageLine.new('[#lolchannel 12:48] <foo> preparing live deploy') }

    it "should return the full text representation of the line" do
      subject.line.should eql '[#lolchannel 12:48] <foo> preparing live deploy'
    end

    its(:time)    { should eql '12:48'                 }
    its(:user)    { should eql 'foo'                   }
    its(:channel) { should eql '#lolchannel'           }
    its(:message) { should eql "preparing live deploy" }
  end

  context "when its a JOIN message" do
    subject { Irclog::Parser::MessageLine.new('[#lolchannel 07:55] JOIN: bren') }

    its(:channel) { should eql "#lolchannel" }
    its(:user)    { should eql "bren"        }
    its(:time)    { should eql '07:55'       }
    its(:message) { should be_nil            }

    it "should return the full representation" do
      subject.line.should eql('[#lolchannel 07:55] JOIN: bren')
    end
  end

  context "when its a PART message" do
    subject { Irclog::Parser::MessageLine.new('[#lolchannel 11:30] PART: bar') }

    its(:channel) { should eql "#lolchannel" }
    its(:user)    { should eql "bar"         }
    its(:time)    { should eql '11:30'       }
    its(:message) { should be_nil            }

    it "should return the full representation" do
      subject.line.should eql('[#lolchannel 11:30] PART: bar')
    end
  end
end
