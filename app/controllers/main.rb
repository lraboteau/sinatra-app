# app/controllers/main.rb
# Include all the gems listed in Gemfile
require 'bundler'
Bundler.require

class Main < Sinatra::Base
  # Global settings
  configure do
    set :root, File.dirname(__FILE__)
    set :public_folder, 'public'
    set :views, 'app/views'
  end

  # Index
  get '/' do
    slim :'index'
  end
end