require 'active_record'
require 'action_dispatch'
require 'active_record/session_store'

ActiveRecord::Base.class_eval do
  attr_accessible
  attr_accessor :accessible

  private
  def mass_assignment_authorizer
    if accessible == :all
      self.class.protected_attributes
    else
      super + (accessible || [])
    end
  end
end

ActiveRecord::SessionStore::Session.send(:attr_accessible, :session_id)
