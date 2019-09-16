# run this with cshoes.exe --ruby win-merge.rb build.yaml

require 'fileutils'
include FileUtils
require 'yaml'
opts = YAML.load_file(ARGV[0])
opts['packdir'] = Dir.getwd
home = ENV['HOME']
#appdata = ENV['APPDATALOCAL']
appdata = "#{home}\\APPDATA\\Local" if !appdata
appdata = appdata.tr("\\",'/')
util = YAML.load_file("#{appdata}/shoes/package/util.yaml")
opts['RESH'] = util['rhp']
opts['NSIS'] = util['nsp']
GEMS_DIR = File.join(appdata, '.shoes','+gem')
puts "DIR = #{DIR}"
puts "GEMS_DIR = #{GEMS_DIR}"
require "package/merge-exe"
PackShoes::merge_exe(opts) {|t| $stderr.puts t}