begin
  require 'yard'

  YARD::Rake::YardocTask.new do |t|
    t.files   = ['README.md', 'lib/**/*.rb']
    t.options = ['-o', 'doc']
  end

  desc "Generate YARD Documentation"
  task :doc => :yard

  namespace :doc do
    desc 'Cleanup generated docs'
    task :clean do
      system "rm -Rfv doc"
      system "rm -Rfv .yardoc"
    end
  end
rescue LoadError
  task :yard do
    abort 'YARD is not available. In order to run yard, you must: gem install yard'
  end
end