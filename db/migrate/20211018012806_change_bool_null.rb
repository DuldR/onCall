class ChangeBoolNull < ActiveRecord::Migration[6.1]
  def change
    change_column_null :swaps, :origin_approve, true
    change_column_null :swaps, :target_approve, true
  end
end
