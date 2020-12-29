import Route from '@ember/routing/route';

export default class ServicesRoute extends Route {
  async model({clinician_id}) {
    let response = await fetch(`/api/v1/clinicians/${clinician_id}/services`);
    let { data } = await response.json();

    return data.map(model => {
      let { id, type, attributes } = model;

      return { id, type, ...attributes, clinician_id };
    });
  }
}
