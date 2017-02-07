require 'net/http'

module Codeship
  module Request

    def http_request
      http = Net::HTTP.new "app.codeship.com", 443
      http.use_ssl = true
      http
    end

  end
end
