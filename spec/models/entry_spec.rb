require 'spec_helper'

describe Entry do

  it "should use 'now' for new records" do
    now = DateTime.now
    DateTime.stubs(:now).returns(now)
    
    entry = Entry.create!

    entry.at.should == now
  end

  it "should keep provided value for 'at'" do
    provided_at = 1.day.ago
    
    entry = Entry.create!(:at => provided_at)

    entry.at.should == provided_at
  end
end
