require "#{File.dirname(__FILE__)}/vendor/gems/environment"
require 'geokit'
require 'gowalla'
require 'sinatra/base'
require 'haml'

module Gowalla
  class Spotfinder < Sinatra::Base

    get '/' do
      haml :lookup_form
    end
  
    post '/' do
      @address = params[:address]
      gowalla = Gowalla::Client.new(:username => 'okrb', :password => 'sinatra', :api_key => '83d8d34b835a4d0d8bd80f41ef037633')
      results = Geokit::Geocoders::YahooGeocoder.geocode(@address)
      @spots = gowalla.list_spots(:lat => results.lat, :lng => results.lng)
      haml :spots
    end
  end
end