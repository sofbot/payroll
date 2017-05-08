class CreateEmployees < ActiveRecord::Migration[5.0]
  def change
    create_table :employees do |t|
      t.string :name, null: false
      t.integer :position_id, null: false
      t.timestamps
    end

    add_index :employees, :position_id
  end
end
