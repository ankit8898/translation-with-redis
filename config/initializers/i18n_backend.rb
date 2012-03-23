p "inside it for loading"
Rails.logger.info "I am loding...."
uri = URI.parse(ENV["REDISTOGO_URL"])
p "~~~~~~~~~~~~~redis at #{Redis.new(:host => uri.host, :port => uri.port, :password => uri.password)}"
I18n.backend = I18n::Backend::KeyValue.new(Redis.new(:host => uri.host, :port => uri.port, :password => uri.password))
