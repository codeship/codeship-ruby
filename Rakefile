require "bundler/gem_tasks"
require "rspec/core/rake_task"

desc "Open an irb session preloaded with this library"
task :console do
  sh "irb -rubygems -I lib -r codeship.rb"
end

RSpec::Core::RakeTask.new(:spec)

task default: :spec
