require 'rubygems'
begin
  require 'bundler/setup'
rescue LoadError
  puts "You must 'gem install bundler' and 'bundle install' to run rake tasks"
end
Bundler::GemHelper.install_tasks

require 'yard'

YARD::Rake::YardocTask.new (:doc) do |t|
  t.files   = ['README.md', 'lib/**/*.rb']   # optional
  t.options = ['-o doc'] # optional
end

namespace :doc do
  desc 'Cleanup generated docs'
  task :clean do
    system "rm -Rfv doc"
    system "rm -Rfv .yardoc"
  end
end
