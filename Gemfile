source 'https://rubygems.org'
ruby '~> 2.3'

git_source(:github) do |repo_name|
	repo_name = "#{repo_name}/#{repo_name}" unless repo_name.include?("/")
	"https://github.com/#{repo_name}.git"
end

gem 'rails', '~> 5.0.1'
group :development, :test do
	gem 'sqlite3'
end
group :production do
	gem 'pg'
end
gem 'puma', '~> 3.0'
gem 'sass-rails', '~> 5.0'
gem 'uglifier', '>= 1.3.0'
gem 'coffee-rails', '~> 4.2'

gem 'jquery-rails', '~> 4.3', '>= 4.3.1'
gem 'turbolinks', '~> 5'
gem 'jbuilder', '~> 2.5'

group :development, :test do
	gem 'byebug', platform: :mri
end

group :development do
	gem 'web-console', '>= 3.3.0'
	gem 'listen', '~> 3.0.5'
	gem 'spring'
	gem 'spring-watcher-listen', '~> 2.0.0'
end

gem 'tzinfo-data', platforms: [:mingw, :mswin, :x64_mingw, :jruby]

gem 'devise'
gem 'paperclip', '~> 5.0.0'
gem 'aws-sdk', '~> 2.3.0'
gem 'fog'
gem 'figaro'

gem 'tinymce-rails', '~> 4.6'
gem 'tinymce-rails-langs', '~> 4.20160310'