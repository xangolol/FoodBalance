class CreateExpenses < ActiveRecord::Migration
  def change
    create_table :expenses do |t|
      t.date :date
      t.money :amount
      t.string :type
      t.string :note
      t.integer :user_id
      t.integer :event_id

      t.timestamps null: false
    end
    add_index :expenses, :date
    add_index :expenses, :user_id
    add_index :expenses, :event_id, :unique => true
  end
end
