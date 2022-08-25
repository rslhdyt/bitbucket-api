require 'faraday_middleware'
# require 'bitbucket-api/middleware/handle_response_exception'
require 'bitbucket-api/api/base'
require 'bitbucket-api/model/base'
require 'bitbucket-api/collection/pagination'

require 'bitbucket-api/api/pull_request'
require 'bitbucket-api/model/pull_request'
require 'bitbucket-api/model/account'

module BitbucketApi
  class Client
    BASE_URL = 'https://api.bitbucket.org/2.0'.freeze

    def initialize(options = {})
      @connection = Faraday.new(url: BASE_URL) do |conn|
        conn.request :basic_auth, BitbucketApi.username, BitbucketApi.app_password
        conn.request :json
        conn.response :json
        
        # conn.use ::Middleware::HandleResponseException
        conn.adapter Faraday.default_adapter
      end
    end

    def pull_request
      @pull_request ||= BitbucketApi::Api::PullRequest.new(self)
    end

    def get(url, params = nil)
      response = @connection.get(url, params)
      response.body
    end

    def post(url, params)
      response = @connection.post(url, params)
      response.body
    end

    def patch(url, params)
      response = @connection.patch(url, params)
      response.body
    end
  end
end
