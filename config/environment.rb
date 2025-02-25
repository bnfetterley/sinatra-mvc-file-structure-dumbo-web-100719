ENV['SINATRA_ENV'] ||= "development"
ENV['RACK_ENV'] ||= "development"

require 'bundler/setup'
Bundler.require(:default, ENV['SINATRA_ENV'])

require_all 'app'

ActiveRecord::Base.establish_connection(adapter: 'sqlite3', database: 'db/development.db')
