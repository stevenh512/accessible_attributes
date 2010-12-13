require 'spec_helper'

describe User do
  before(:each) do
    @attrs = {
      :email => 'test@example.com',
      :password => 'password',
      :role => 'admin'
    }
  end

  describe 'when creating a user' do
    it "should not mass-assign role" do
      u = User.new(@attrs)
      u.role.should be_blank
    end
  end

  describe 'when updating attributes' do
    it "should not mass-assign role" do
      u = User.new
      u.update_attributes(@attrs)
      u.role.should be_blank
    end
  end

  describe 'with accessible :all' do
    it "should mass-assign role" do
      u = User.new
      u.accessible = :all
      u.update_attributes(@attrs)
      u.role.should_not be_blank
      u.role.should == "admin"
    end
  end
end

