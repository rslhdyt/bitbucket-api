module BitbucketApi
  class Configuration
    attr_accessor :username,
                  :app_password

    def initialize(**args)
      @username = args[:username]
      @app_password = args[:app_password]
    end

    def configure
      yield self
    end
  end
end
