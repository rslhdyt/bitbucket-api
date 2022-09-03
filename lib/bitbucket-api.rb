require_relative 'bitbucket-api/version'
require 'bitbucket-api/client'
require 'bitbucket-api/configuration'

# require errors
# require 'bitbucket-api/errors'

module BitbucketApi
  class << self
    attr_accessor :client, :config

    def new(options = {}, &block)
      @client = BitbucketApi::Client.new(options, &block)
    end

    def config
      @config ||= Configuration.new
    end

    def reset
      @config = Configuration.new
    end

    def configure
      yield config
    end
  end
end