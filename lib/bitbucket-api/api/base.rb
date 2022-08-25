module BitbucketApi
  module Api
    class Base
      attr_reader :client

      def initialize(client)
        @client = client
      end
    end
  end
end