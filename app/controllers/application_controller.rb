class ApplicationController < ActionController::Base
  protect_from_forgery

  def authenticate
    Rack::Auth::Basic "Restricted Area" do |username, password|
      username == ENV['HEROKU_USERNAME'] && password == ENV['HEROKU_PASSWORD']
    end
  end
end
