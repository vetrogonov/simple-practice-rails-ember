# frozen_string_literal: true

module SimplePractice
  class BaseService
    require 'rest-client'

    BASE_URL = Rails.application.credentials.simple_practice_url

    attr_accessor :path, :filter

    def fetch
      RestClient::Request.execute(method: :get,
                                  url: BASE_URL + @path,
                                  headers: headers)
    end

    private

    def headers
      {
        accept: 'application/vnd.api+json',
        'api-version' => '2019-01-17',
        'application-build-version' => '0.0.0',
        'application-platform' => 'web',
        params: { filter: @filter }
      }
    end
  end
end

