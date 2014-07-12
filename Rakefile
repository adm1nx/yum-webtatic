#!/usr/bin/env rake

require 'rubocop/rake_task'
require 'foodcritic'

# Style tests. Rubocop and Foodcritic
namespace :style do
  desc 'Run Ruby style checks'
  Rubocop::RakeTask.new(:ruby)

  desc 'Run Chef style checks'
  FoodCritic::Rake::LintTask.new(:chef) do |t|
    t.options = {
      fail_tags: ['any'],
      tags: ['~FC015']
    }
  end
end

desc 'Run all style checks'
task :style => ['style:chef', 'style:ruby']

task :test => ['style']

task :package do
  system "tar", "-zcvf", "yum-webtatic.tgz",
    "-s", "#^\.#yum-webtatic#",
    "--include", ".",
    "--include", "./attributes",
    "--include", "./definitions",
    "--include", "./recipes",
    "--include", "./*.md",
    "--include", "./LICENSE",
    "--include", "./metadata.*",
    "./"
end