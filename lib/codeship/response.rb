require 'net/http'
require 'json'

module Codeship
  module Response

    def handle resp
      resp.value()
      JSON.parse resp.body
    end

  end
end
