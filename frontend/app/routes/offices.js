import Route from '@ember/routing/route';

export default class OfficesRoute extends Route {

  async model(params, transition) {
    let response = await fetch(`/api/v1/clinicians/${params.clinician_id}/services/${params.service_id}/offices`);
    let { data } = await response.json();

    let offices = data.map(model => {
      let { id, type, attributes, geolocation } = model;

      return { id, type, ...attributes, ...geolocation };
    });

    let service = transition.to.queryParams;

    return {
      offices,
      service
    };
  }
}
