class UpdateDefaults < ActiveRecord::Migration[6.1]
  def change
    change_column_default :swaps, :origin_approve, default: true
  end
end
