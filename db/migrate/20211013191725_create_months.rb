class CreateMonths < ActiveRecord::Migration[6.1]
  def change
    create_table :months do |t|
      t.string :name, null: false
      t.integer :month_num, null: false
      t.datetime :month_start, null: false
      t.datetime :month_end, null: false


      t.timestamps
    end
  end
end
