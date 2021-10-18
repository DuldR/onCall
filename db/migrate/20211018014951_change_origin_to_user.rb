class ChangeOriginToUser < ActiveRecord::Migration[6.1]
  def change
    rename_column :swaps, :origin_id, :user_id
    rename_column :swaps, :origin_shift, :user_shift
  end
end
