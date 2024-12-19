# Sinatra-app
Sinatra application example.

## Prerequisites
First of all, we're going to create the foundation for the Sinatra application:

| File         | Folder      | Description                                                       |
|:-------------|:------------|:------------------------------------------------------------------|
| Gemfile      | /           | App&#039;s `gem` dependencies definition                          |

### Gemfile creation
`Gemfile` creation with this command line:

    echo "source \"https://rubygems.org\"\ngit_source(:github) { |repo| \"https://github.com/#{repo}.git#\" }" > Gemfile

### Add Gems
Install the **Gems** needed to run the application:

    bundle add activerecord activesupport pg rack rack-test rspec sinatra sinatra-activerecord sinatra-contrib slim thin tux

## Project Files Creation

| File         | Folder            | Description                                                       |
|:-------------|:------------------|:------------------------------------------------------------------|
| main.rb      | /app/controllers/ | Main file of the modular app where you define App&#039;s features |
| config.ru    | /                 | Rack configuration file to defines how App is running             |

### App.rb
`main.rb` is the main entry point into our app where we define what the app does. Notice how we&#039;ve subclassed `Sinatra::Base` to make the app modular.

As you can see below, we include some settings for fetching folders as well as defining the public folder &#040;for storing static files&#041;. Another important note here is that we register the `Sinatra::ActiveRecordExtension` which lets us work with ActiveRecord as the ORM.

## Testing

### Setup Rspec
Initialize RSpec in for project. The following command should create an `.rspec` and a `spec/spec_helper.rb` file with this command line:

    bundle exec rspec --init

### Execute Rspec Test
To execute Rspec Test using this command line:

    bundle exec rspec

### Start Your Application
Start your Sinatra application with this command line:

    thin start