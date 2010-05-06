require "bundler"
Bundler.setup

require "rspec/core/rake_task"
Rspec::Core::RakeTask.new(:spec)

gemspec = eval(File.read("newgem.gemspec"))

task :build => "#{gemspec.full_name}.gem"

file "#{gemspec.full_name}.gem" => gemspec.files + ["newgem.gemspec"] do
  system "gem build newgem.gemspec"
  system "gem install newgem-#{NewGem::VERSION}.gem"
end