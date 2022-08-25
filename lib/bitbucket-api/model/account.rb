module BitbucketApi
  module Model
    class Account < BitbucketApi::Model::Base
      attr_accessor :id,
                    :links,
                    :display_name,
                    :username,
                    :uuid
    end
  end
end