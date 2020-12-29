import Model, { attr } from '@ember-data/model';

export default class OfficeModel extends Model {
  @attr('string') type;
  @attr('string') city;
  @attr('string') name;
  @attr('string') state;
  @attr('string') street;
  @attr('string') zip;
  @attr('string') phone;
  @attr('string') isVideo;
  @attr('string') lat;
  @attr('string') lng;

}
