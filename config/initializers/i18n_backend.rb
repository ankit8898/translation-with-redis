p "inside it for loading"
Rails.logger.info "I am loding...."
uri = URI.parse(ENV["REDISTOGO_URL"]) if Rails.env.eql?("production")
REDIS = Rails.env.eql?("development") ? Redis.new : Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)

I18n.backend = I18n::Backend::KeyValue.new(REDIS)
