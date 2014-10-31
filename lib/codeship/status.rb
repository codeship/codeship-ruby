require "codeship/request"

module Codeship
  class Status

    include Request

    STATES = [:branchnotfound, :error, :ignored, :projectnotfound,
              :success, :testing, :waiting]

    def initialize uuid, options = {}
      @uuid = uuid
      @branch = options.delete(:branch)
    end

    def status
      image.scan(/status_(.*).png/).flatten.first.to_sym
    end

    private

    def image
      head['Content-Disposition'].split("\"").last
    end

    def head
      @head ||= http_request.head project_url
    end

    def project_url
      url = "/projects/#{@uuid}/status"
      url << "?branch=#{@branch}" if @branch
      url
    end

  end
end
