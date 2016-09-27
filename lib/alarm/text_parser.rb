module Alarm
  class TextParser
    def initialize(text)
      @text = text
      @tokens = @text.split(' ')
    end

    def uris
      @uris = []

      @tokens.each do |token|
        begin
          uri_string = token =~ /^https?:\/\/[a-z0-9]+/i ?
            token.downcase : "http://#{token}"
          @uris << URI(uri_string)
        rescue
        end
      end

      @uris
    end
  end
end
