class CreateCourses < ActiveRecord::Migration[6.0]
  def change
    create_table :courses do |t|
      t.string :name
      t.text :description
      t.integer :price
      t.string :level

      t.timestamps
    end
  end
end
