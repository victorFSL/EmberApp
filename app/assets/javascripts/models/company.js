// for more details see: http://emberjs.com/guides/models/defining-models/

Relationship.Company = DS.Model.extend({
  name: DS.attr('string'),
  phone: DS.attr('string'),
  email: DS.attr('string'),
  website: DS.attr('string'),
  address: DS.attr('string'),
  customerId: DS.attr('string'),
  additionalInfo: DS.attr('string')
});
