class CreateSwaps < ActiveRecord::Migration[6.1]
  def change
    create_table :swaps do |t|
      t.integer :origin_id, null: false
      t.integer :origin_shift, null: false
      t.integer :target_id, null: false
      t.integer :target_shift, null: false
      t.boolean :origin_approve, default: nil
      t.boolean :target_approve, default: nil

      t.timestamps
    end
  end
end
