class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :title
      t.text :description
      t.boolean :completed
      t.references :project, index: true, foreign_key: true
      t.integer :difficulty
      t.date :due_date
      t.date :created_date


      t.timestamps null: false
    end
  end
end
