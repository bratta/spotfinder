require "#{File.dirname(__FILE__)}/vendor/gems/environment"
require 'sinatra'
require 'spotfinder'

set :environment, ENV['RACK_ENV'].to_sym || :development
set :root,        File.dirname(__FILE__)

disable :run

use Rack::Static, :urls => ['/assets', '/css', '/images', '/js'], 
                  :root => "#{File.dirname(__FILE__)}/public"

run Gowalla::Spotfinder
