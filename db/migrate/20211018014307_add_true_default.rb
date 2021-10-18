class AddTrueDefault < ActiveRecord::Migration[6.1]
  def change
    change_column_default :swaps, :origin_approve, true
  end
end
