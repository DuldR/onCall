class FixShiftId < ActiveRecord::Migration[6.1]
  def change
    rename_column :swaps, :target_shift, :target_shift_id
  end
end
