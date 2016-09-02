require 'lita_dotenv'

Lita.configure do |config|
  config = LitaDotenv.new(config).config

  # Heroku Configurations:
  if ENV['SMSBOT_HEROKU'] == 'true'
    config.redis[:url] = ENV['REDISTOGO_URL']
    config.http.port = ENV['PORT']
  end
end
