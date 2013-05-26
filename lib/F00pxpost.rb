require "f00pxpost/version"
require "f00pxpost/client"

module F00pxpost

  class << self

    attr_accessor :consumer_key, :consumer_secret

    def setup
      yield(self)
    end

  end

end
