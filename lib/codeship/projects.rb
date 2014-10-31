require "codeship/request"
require "codeship/response"

module Codeship
  class Projects

    include Request
    include Response

    def initialize api_key = nil
      @api_key = api_key
    end

    def list
      raise ArgumentError, 'You need to set API key' if !@api_key
      resp = http_request.request_get projects_url
      handle(resp)['projects']
    end

    def project id
      raise ArgumentError, 'You need to set API key' if !@api_key
      @project_id = id
      resp = http_request.request_get projects_url
      handle(resp)
    end

    private

    def projects_url
      url = "/api/v1/projects.json"
      url = "/api/v1/projects/#{@project_id}.json" if @project_id
      url << "?api_key=#{@api_key}"
      url
    end
  end
end
