# Configure Rails Envinronment
ENV["RAILS_ENV"] = "test"

# Load support files
Dir["#{File.dirname(__FILE__)}/support/**/*.rb"].each { |f| require f }

require File.expand_path("../../lib/accessible_attributes", __FILE__)

RSpec.configure do |config|
  # Remove this line if you don't want Rspec's should and should_not
  # methods or matchers
  require 'rspec/expectations'
  config.include Rspec::Matchers

  # == Mock Framework
  config.mock_with :rspec
end