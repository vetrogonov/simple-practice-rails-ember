# frozen_string_literal: true

module SimplePractice
  class ServicesService < SimplePractice::BaseService
    PATH = '/client-portal-api/cpt-codes'

    def initialize(clinician_id)
      @path = PATH
      @filter = filter_serializer(clinician_id)
    end

    def filter_serializer(clinician_id)
      { clinicianId: clinician_id }
    end
  end
end
