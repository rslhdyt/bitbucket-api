module BitbucketApi
  module Api
    class PullRequest < BitbucketApi::Api::Base
      def user(user)
        response = @client.get("pullrequests/#{user}", params = {})
        
        BitbucketApi::Collection::Pagination.new(response, BitbucketApi::Model::PullRequest)
      end
      
      def commit(repository, commit, params = {})
        response = @client.get("repositories/#{repository}/commit/#{commit}/pullrequests", params)
        
        BitbucketApi::Collection::Pagination.new(response, BitbucketApi::Model::PullRequest)
      end

      def all(repository, params = {})
        response = @client.get("repositories/#{repository}/pullrequests", params)
        
        BitbucketApi::Collection::Pagination.new(response, BitbucketApi::Model::PullRequest)
      end

      def default_reviewers(repository)
        response = @client.get("repositories/#{repository}/default-reviewers")
        
        BitbucketApi::Collection::Pagination.new(response, BitbucketApi::Model::Account)
      end
    end
  end
end