require 'dotenv/load'
require 'sidekiq-pro'
require 'sidekiq/pro/web'

Sidekiq.configure_client do |config|
  config.redis = {
    url:       ENV['REDIS_URL'],
    size:      1
  }
end

map '/' do
  use Rack::Auth::Basic, 'Protected Area' do |username, password|
    username == ENV['USERNAME'] && password == ENV['PASSWORD']
  end

  run Sidekiq::Web
end
