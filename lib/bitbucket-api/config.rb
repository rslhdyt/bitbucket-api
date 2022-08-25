module BitbucketApi
  module Config
    OPTIONS_KEYS = [
      :username,
      :app_password,
    ]

    attr_accessor *OPTIONS_KEYS

    def config
      yield self
    end
  end
end
