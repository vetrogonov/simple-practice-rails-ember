import EmberRouter from '@ember/routing/router';
import config from 'frontend/config/environment';

export default class Router extends EmberRouter {
  location = config.locationType;
  rootURL = config.rootURL;
}

Router.map(function() {
  this.route('services', { path: '/clinicians/:clinician_id/services'});
  this.route('offices', { path: '/clinicians/:clinician_id/services/:service_id/offices'});
});
