require "instagram"
require "pp"
require "open-uri"
# require "FileUtils"

CALLBACK_URL = "http://localhost:3000"

Instagram.configure do |config|
  config.client_id = Rails.application.secrets.instagram_client_id
  config.client_secret = Rails.application.secrets.instagram_client_secret
end
