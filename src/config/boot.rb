#
#   Copyright 2011 Red Hat, Inc.
#
#   Licensed under the Apache License, Version 2.0 (the "License");
#   you may not use this file except in compliance with the License.
#   You may obtain a copy of the License at
#
#       http://www.apache.org/licenses/LICENSE-2.0
#
#   Unless required by applicable law or agreed to in writing, software
#   distributed under the License is distributed on an "AS IS" BASIS,
#   WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
#   See the License for the specific language governing permissions and
#   limitations under the License.
#

require 'rubygems'

if ENV['USE_BUNDLER'] == 'yes'
  puts "===== boot.rb will try and use bundler ========="
  ENV['BUNDLE_GEMFILE'] = File.expand_path('../../Gemfile', __FILE__)
  require 'bundler' if File.exists?(ENV['BUNDLE_GEMFILE'])
  begin
    Bundler.setup
  rescue Bundler::GemNotFound => e
    STDERR.puts e.message
    STDERR.puts "Try running `bundle install`."
    exit!
  end # if File.exist?(gemfile)
end
