class AddUserMonthToShift < ActiveRecord::Migration[6.1]
  def change
    add_column :shifts, :user_id, :integer
    add_column :shifts, :month_id, :integer
  end
end
