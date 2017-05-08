Rails.application.configure do
	config.action_mailer.default_url_options = { host: 'http://brxyxmp.xyz' }
	config.action_mailer.delivery_method = :smtp
	config.action_mailer.smtp_settings = {
	address: "smtp.gmail.com",
	port: 587,
	domain: "brxyxmp.xyz",
	authentication: "plain",
	enable_starttls_auto: true,
	user_name: ENV["EMAIL_USER"],
	password: ENV["EMAIL_PASSWORD"]
	}
	config.cache_classes = true
	option for performance.
	config.eager_load = true
	config.consider_all_requests_local       = false
	config.action_controller.perform_caching = true
	config.public_file_server.enabled = ENV['RAILS_SERVE_STATIC_FILES'].present?
	config.assets.js_compressor = :uglifier
	config.assets.compile = true
	# `config.assets.precompile` and `config.assets.version` have moved to config/initializers/assets.rb
	config.log_level = :debug
	config.log_tags = [ :request_id ]
	config.action_mailer.perform_caching = false
	config.i18n.fallbacks = true
	config.active_support.deprecation = :notify
	config.log_formatter = ::Logger::Formatter.new
	if ENV["RAILS_LOG_TO_STDOUT"].present?
		logger           = ActiveSupport::Logger.new(STDOUT)
		logger.formatter = config.log_formatter
		config.logger = ActiveSupport::TaggedLogging.new(logger)
	end
	config.active_record.dump_schema_after_migration = false
end
