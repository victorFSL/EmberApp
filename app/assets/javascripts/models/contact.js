// for more details see: http://emberjs.com/guides/models/defining-models/

Relationship.Contact = DS.Model.extend({
  familyName: DS.attr('string'),
  givenNames: DS.attr('string'),
  company: DS.belongsTo('company'),
  title: DS.attr('string'),
  phone: DS.attr('string'),
  email: DS.attr('string'),
  website: DS.attr('string'),
  address: DS.attr('string'),
  customerId: DS.attr('string'),
  additionalInfo: DS.attr('string')
});
