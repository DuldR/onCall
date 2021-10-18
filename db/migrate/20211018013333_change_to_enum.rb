class ChangeToEnum < ActiveRecord::Migration[6.1]
  def change
    drop_table :swaps
  end
end
