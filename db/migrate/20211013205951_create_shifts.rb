class CreateShifts < ActiveRecord::Migration[6.1]
  def change
    create_table :shifts do |t|
      t.datetime :shift_start, null: false
      t.datetime :shift_end, null: false

      t.timestamps
    end
  end
end
