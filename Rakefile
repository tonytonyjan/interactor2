# frozen_string_literal: true

task default: %i(rubocop test)

require 'rubygems/package_task'
spec_path = File.expand_path('./interactor2.gemspec', __dir__)
spec = Gem::Specification.load spec_path
Gem::PackageTask.new(spec).define

require 'rake/testtask'
Rake::TestTask.new do |t|
  t.test_files = FileList['test/**/test_*.rb']
end

require 'rubocop/rake_task'
RuboCop::RakeTask.new
