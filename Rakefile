require File.expand_path('../config/application', __FILE__)
require 'rspec/core/rake_task'
require 'slim_lint/rake_task'

Rails.application.load_tasks
RSpec::Core::RakeTask.new('spec')

task :rubocop do
  sh 'bundle exec rubocop'
end

task :slim_lint do
  sh 'bundle exec slim-lint app/**/*.slim'
end

task default: [:spec, :rubocop, :slim_lint]
