require "codeship/request"
require "codeship/response"

module Codeship
  class Builds

    include Request
    include Response

    def initialize api_key = nil
      @api_key = api_key
    end

    def restart id
      raise ArgumentError, 'You need to set API key' if !@api_key
      @build_id = id
      @action = 'restart'
      resp = http_request.request_post builds_url, ''
      handle(resp)
    end

    private

    def builds_url
      url = "/api/v1/builds.json"
      url = "/api/v1/builds/#{@build_id}.json" if @build_id
      url = "/api/v1/builds/#{@build_id}/#{@action}.json" if @build_id && @action
      url << "?api_key=#{@api_key}"
      url
    end
  end
end
