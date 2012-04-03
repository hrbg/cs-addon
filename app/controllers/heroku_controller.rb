class HerokuController < CloudspongeController
  before_filter :authenticate_heroku

  protected

  def authenticate_heroku
    authenticate_or_request_with_http_basic('Authenticate') do |username, password|
      username == ENV['HEROKU_USERNAME'] && password == ENV['HEROKU_PASSWORD']
    end
  end
end
