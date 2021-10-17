class ChangeMonthColumns < ActiveRecord::Migration[6.1]
  def change
    change_column :months, :month_start, :date, null: false
    change_column :months, :month_end, :date, null: false
  end
end
