class CreateUsers < ActiveRecord::Migration[6.1]
  def change
    create_table :users do |t|

      t.string :name
      t.boolean :on_call, default: false
      t.boolean :swap_request, default: false

      t.timestamps
    end
  end
end
