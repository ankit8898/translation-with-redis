p "inside it for loading"
Rails.logger.info "I am loding...."
I18n.backend = I18n::Backend::KeyValue.new(Redis.new)