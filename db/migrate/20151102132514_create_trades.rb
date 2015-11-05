class CreateTrades < ActiveRecord::Migration
  def change
    create_table :trades do |t|
      t.integer :sender_id
      t.integer :receiver_id
      t.integer :sender_item_id
      t.integer :receiver_item_id
      t.string :status

      t.timestamps null: false
    end
  end
end
