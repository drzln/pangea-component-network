# frozen_string_literal: true

require %(bundler/gem_tasks)
require %(rubocop/rake_task)
require %(rspec/core/rake_task)

RuboCop::RakeTask.new(:rubocop) do |t|
  t.options = [%(--display-cop-names)]
end

task :bundix do
  sh %(bundle lock --update)
  sh %(bundix)
end
