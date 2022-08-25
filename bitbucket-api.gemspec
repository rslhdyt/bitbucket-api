require File.expand_path('lib/bitbucket-api/version', __dir__)

Gem::Specification.new do |gem|
  gem.name                  = 'bitbucket-api'
  gem.authors               = [ "Risal Hidayat" ]
  gem.email                 = "risalhidayat88@gmail.com"
  gem.homepage              = 'https://github.com/rslhdyt/bitbucket-api'
  gem.summary               = %q{ Ruby wrapper for the BitBucket API supporting OAuth and Basic Authentication }
  gem.description           = %q{ Ruby wrapper for the BitBucket API supporting OAuth and Basic Authentication }
  gem.version               = BitbucketApi::VERSION
  gem.license               = "MIT"
  gem.required_ruby_version = '>= 2.5.0'

  gem.files = Dir['Rakefile', '{features,lib,spec}/**/*', 'README*', 'LICENSE*']
  gem.require_paths = %w[ lib ]

  gem.add_dependency 'faraday'
  gem.add_dependency 'faraday_middleware'

  gem.add_development_dependency 'rspec', '>= 0'
  gem.add_development_dependency 'webmock'
  gem.add_development_dependency 'vcr'
  gem.add_development_dependency 'simplecov'
  gem.add_development_dependency 'rake'
  gem.add_development_dependency 'bundler'
  gem.add_development_dependency 'pry'
end