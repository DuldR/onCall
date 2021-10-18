class NewSwapsTable < ActiveRecord::Migration[6.1]
  def change

    create_table :swaps do |t|

      t.integer :origin_id, null: false
      t.integer :origin_shift, null: false
      t.integer :target_id, null: false
      t.integer :target_shift, null: false
      t.boolean :origin_approve, default: nil
      t.integer :target_approve, default: 0

      t.timestamps
    end
  end
end
