# Bitbucket API
Bitbucket 2.0 API client

## Installation
Add this line to your application's Gemfile:

```
gem 'bitbucket-api', git: 'git@github.com:rslhdyt/bitbucket-api.git'
```

And then execute:

```
$ bundle install
```

Or install it yourself as:

```
$ gem install bitbucket-api
```

## Usage

#### Init the client

There is multiple ways to set the config.

```
BitbucketApi.config do |config|
    config.username = 'BITBUCKET_USERNAME'
    config.app_password = 'BITBUCKET_APP_PASSWORD'
end

client = BitbucketApi.new
```

Alternatively, you can configure the BitBucket settings by passing a block:

```
client = BitbucketApi.new do |config|
    config.username = 'BITBUCKET_USERNAME'
    config.app_password = 'BITBUCKET_APP_PASSWORD'
end
```

#### Interact with the interface

You can interact with BitBucket interface, for example pull request, by issuing following calls that correspond directly to the BitBucket API hierarchy

```
response = client.pull_request.all('username/repository_slug', { state: 'OPEN'})
```

## Development
After checking out the repo, run bin/setup to install dependencies. Then, run rake spec to run the tests. You can also run bin/console for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run bundle exec rake install. To release a new version, update the version number in version.rb, and then run bundle exec rake release, which will create a git tag for the version, push git commits and the created tag, and push the .gem file to rubygems.org.