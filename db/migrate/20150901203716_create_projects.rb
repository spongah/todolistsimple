class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :title
      t.text :description
      t.integer :difficulty
      t.boolean :completed
      t.date :due_date
      t.date :created_date

      t.timestamps null: false
    end
  end
end
