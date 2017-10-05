class CreateTasks < ActiveRecord::Migration[5.1]
  def change
    create_table :tasks do |t|
      t.string :description
      t.integer :status, default: 0
      t.references :project, index: true, foreign_key: true
      t.datetime :due_at

      t.timestamps
    end
  end
end
