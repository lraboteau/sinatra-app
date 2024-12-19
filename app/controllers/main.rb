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

    register Sinatra::ActiveRecordExtension
  end

  #set :database_file, 'config/database.yml'

  configure :development do
    # allows to refresh the app without restarting it
    register Sinatra::Reloader
  end

  # Index
  get '/' do
    slim :'index'
  end
end