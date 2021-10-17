class RemoveYear < ActiveRecord::Migration[6.1]
  def change
    remove_column :months, :year
  end
end
