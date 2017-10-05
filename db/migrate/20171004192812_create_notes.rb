class CreateNotes < ActiveRecord::Migration[5.1]
  def change
    create_table :notes do |t|
      t.string :type
      t.string :title
      t.text :description
      t.references :notable, polymorphic: true, index: true
      t.references :contact, index: true, foreign_key: true
      t.timestamps
    end
  end
end
