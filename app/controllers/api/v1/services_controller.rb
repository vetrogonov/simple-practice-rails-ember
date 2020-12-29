# frozen_string_literal: true

module Api
  module V1
    class ServicesController < ApplicationController
      def index
        @response = SimplePractice::ServicesService.new(params[:clinician_id]).fetch

        render json: @response.body, status: @response.code
      end
    end
  end
end

