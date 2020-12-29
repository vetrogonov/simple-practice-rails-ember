# frozen_string_literal: true

module Api
  module V1
    class OfficesController < ApplicationController
      def index
        @response = SimplePractice::OfficesService.new(params[:clinician_id],
                                                       params[:service_id]).fetch

        render json: @response.body, status: @response.code
      end
    end
  end
end
