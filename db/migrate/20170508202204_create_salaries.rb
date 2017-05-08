class CreateSalaries < ActiveRecord::Migration[5.0]
  def change
    create_table :salaries do |t|
      t.decimal :value, null: false
      t.integer :bank_account_id, null: false
      t.timestamps
    end

    add_index :salaries, :bank_account_id
  end
end
