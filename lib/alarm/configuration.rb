module Alarm
  class << self
    def configuration
      @configuration ||= Configuration.new
    end

    def configure
      yield(configuration)
    end
  end

  class Configuration
    attr_accessor :site_name

    def initialize
    end
  end
end
