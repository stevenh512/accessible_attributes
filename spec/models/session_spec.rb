require 'spec_helper'

describe ActiveRecord::SessionStore::Session do
  it "should mass-assign session_id" do
    s = ActiveRecord::SessionStore::Session.new(:session_id => "abc123")
    s.session_id.should_not be_blank
    s.session_id.should == "abc123"
  end
end
