class CreateStudents < ActiveRecord::Migration[6.0]
  def change
    create_table :students do |t|
      t.belongs_to :teacher
      t.string :name
      t.integer :position
      t.boolean :active
      t.text :content

      t.timestamps
    end
  end
end
