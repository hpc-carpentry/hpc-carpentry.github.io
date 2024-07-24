source 'https://rubygems.org'

gem 'faraday', '0.17.3'

group :jekyll_plugins do
  gem 'github-pages', '206'
  gem 'jekyll-get-json', "~> 1.0.0"
  gem 'jekyll', '3.8.7'
end
if Gem::Version.new(RUBY_VERSION) >= Gem::Version.new('3.0.0')
  gem 'webrick', '>= 1.6.1'
end

# Fix for mismatched deps: https://github.com/ffi/ffi/issues/1103
gem "ffi", "< 1.17.0"
