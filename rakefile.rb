desc "Build cerberator gem/exe"
task :build => [:build_gem, :build_exe]

task :build_exe do
    puts `ruby -Ilib #{Gem.bin_path('ocra','ocra')} bin\\cerberator`
end

task :build_gem do
    puts `gem build cerberator.gemspec`
end