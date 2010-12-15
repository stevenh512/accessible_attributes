require 'rubygems'
begin
  require 'bundler/setup'
  require 'rspec/core'
  require 'rspec/core/rake_task'
  require 'yard'
rescue LoadError
  puts "You must 'gem install bundler' and 'bundle install' to run rake tasks"
end

Bundler::GemHelper.install_tasks

RSpec::Core::RakeTask.new(:spec)

YARD::Rake::YardocTask.new (:doc) do |t|
  t.files   = ['README.md', 'lib/**/*.rb']
  t.options = ['-o', 'doc']
end

namespace :doc do
  desc 'Cleanup generated docs'
  task :clean do
    system "rm -Rfv doc"
    system "rm -Rfv .yardoc"
  end
end

task :default => :spec
