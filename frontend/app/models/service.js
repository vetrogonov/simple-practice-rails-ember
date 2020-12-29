import Model, { attr } from '@ember-data/model';

export default class ServiceModel extends Model {
  @attr('string') type;
  @attr('string') description;
  @attr('number') duration;
  @attr('number') rate;
  @attr('boolean') callToBook;
  @attr('number') clinician_id;
}
