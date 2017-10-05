class CreateContactsOffers < ActiveRecord::Migration[5.1]
  def change
    create_table :contacts_offers do |t|
      t.references :contact, foreign_key: true, index: true
      t.references :offer, foreign_key: true, index: true
    end
  end
end
