require 'net/http'

module Codeship
  class Status
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

    def http_request
      http = Net::HTTP.new "www.codeship.io", 443
      http.use_ssl = true
      http
    end
  end
end
