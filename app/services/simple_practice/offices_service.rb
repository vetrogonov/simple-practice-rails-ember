# frozen_string_literal: true

module SimplePractice
  class OfficesService < SimplePractice::BaseService
    PATH = '/client-portal-api/offices'

    def initialize(clinician_id, service_id)
      @path = PATH
      @filter = filter_serializer(clinician_id, service_id)
    end

    def filter_serializer(id, service_id)
      { clinicianId: id,
        cptCodeId: service_id }
    end
  end
end