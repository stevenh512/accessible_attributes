require 'active_support/all'
require 'active_record'

# Establish database connection
ActiveRecord::Base.establish_connection({'adapter' => 'sqlite3', 'database' => ':memory:'})
ActiveRecord::Base.logger = Logger.new(File.expand_path("../../../log/active_record.log", __FILE__))

# Run migrations
ActiveRecord::Migrator.migrate File.expand_path("../../db/migrate/", __FILE__)
