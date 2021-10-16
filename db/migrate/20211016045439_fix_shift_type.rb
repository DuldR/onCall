class FixShiftType < ActiveRecord::Migration[6.1]
  def change
    change_column :shifts, :shift_start, :date
    change_column :shifts, :shift_end, :date
  end
end
