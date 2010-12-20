require 'action_dispatch'
require 'active_record/session_store'

module AccessibleAttributes
  module ActiveRecord
    module SessionStore
      extend ActiveSupport::Concern

      included do
        attr_accessible :session_id
      end
    end
  end
end