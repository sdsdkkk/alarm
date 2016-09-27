require 'uri'
require 'nokogiri'

require 'alarm/version'
require 'alarm/text_parser'
require 'alarm/checker/uri'
require 'alarm/checker/dom'

module Alarm
  class << self
    def triggered?(text)
      uris = TextParser.new(text).uris
      trigger_alarm = false

      uris.each do |uri|
        is_suspicious_uri = Checker::URI.suspicious?(uri)
        is_suspicious_dom = Checker::DOM.suspicious?(dom)
        trigger_alarm ||= (is_suspicious_uri || is_suspicious_dom)
        break if trigger_alarm
      end

      trigger_alarm
    end
  end
end
