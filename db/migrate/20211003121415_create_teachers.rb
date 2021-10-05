class CreateTeachers < ActiveRecord::Migration[6.0]
  def change
    create_table :teachers do |t|
      t.string :name
      t.integer :position
      t.boolean :active

      t.timestamps
    end
  end
end
