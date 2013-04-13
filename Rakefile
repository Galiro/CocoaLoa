require "bundler/setup"
Bundler.require(:default)
require './app'
require 'resque/tasks'
require 'resque_scheduler/tasks'


task "resque:setup" do
    ENV['QUEUE'] = '*'
end

desc "Alias for resque:work (To run workers on Heroku)"

task "jobs:work" => "resque:scheduler"