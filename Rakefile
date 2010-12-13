require 'rubygems'
begin
  require 'bundler/setup'
rescue LoadError
  puts "You must 'gem install bundler' and 'bundle install' to run rake tasks"
end
Bundler::GemHelper.install_tasks

require 'rdoc/task'
require 'rspec/core'
require 'rspec/core/rake_task'

RSpec::Core::RakeTask.new(:spec)

RDoc::Task.new(:rdoc => "rdoc", :clobber_rdoc => "rdoc:clean", :rerdoc => "rdoc:force") do |rd|
  rd.rdoc_dir = "doc"
  rd.title = "AccessibleAttributes"
  rd.main = "README.rdoc"
  rd.rdoc_files.include("README.rdoc", "lib/**/*.rb")
  #rd.external = true
end
