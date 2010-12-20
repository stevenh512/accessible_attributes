require 'active_record'

module AccessibleAttributes
  module ActiveRecord
    module Base
      extend ActiveSupport::Concern

      included do
        attr_accessible
        attr_accessor :accessible
      end

      module InstanceMethods
        private
        def mass_assignment_authorizer
          if accessible == :all
            self.class.protected_attributes
          else
            super + (accessible || [])
          end
        end
      end
    end
  end
end