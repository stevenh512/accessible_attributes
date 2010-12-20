require 'rubygems'
begin
  require 'bundler/setup'

  Bundler::GemHelper.install_tasks

  FileList['tasks/**/*.rake'].each { |task| import task }
rescue LoadError
  puts "You must 'gem install bundler' and 'bundle install' to run rake tasks"
end
