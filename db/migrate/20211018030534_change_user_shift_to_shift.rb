class ChangeUserShiftToShift < ActiveRecord::Migration[6.1]
  def change
    rename_column :swaps, :user_shift, :shift_id
  end
end
