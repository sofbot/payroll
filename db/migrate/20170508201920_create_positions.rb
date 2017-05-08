class CreatePositions < ActiveRecord::Migration[5.0]
  def change
    create_table :positions do |t|
      t.string :title, null: false
      t.integer :salary_id, null: false
      t.timestamps
    end

    add_index :positions, :salary_id
  end
end
