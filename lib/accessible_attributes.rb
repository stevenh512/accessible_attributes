require 'active_support/concern'
require 'accessible_attributes/active_record/base'
require 'accessible_attributes/active_record/session_store'

ActiveRecord::Base.send(:include, AccessibleAttributes::ActiveRecord::Base)

ActiveRecord::SessionStore::Session.send(:include, AccessibleAttributes::ActiveRecord::SessionStore)
