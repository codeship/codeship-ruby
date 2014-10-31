require 'net/http'

module Codeship
  module Request

    def http_request
      http = Net::HTTP.new "www.codeship.io", 443
      http.use_ssl = true
      http
    end

  end
end
