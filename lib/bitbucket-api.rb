require_relative 'bitbucket-api/version'
require 'bitbucket-api/client'
require 'bitbucket-api/config'

# require errors
# require 'bitbucket-api/errors'

module BitbucketApi
  extend Config

  class << self
    attr_accessor :client

    def new(options = {}, &block)
      @client = BitbucketApi::Client.new(options, &block)
    end
  end
end