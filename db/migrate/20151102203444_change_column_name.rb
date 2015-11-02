class ChangeColumnName < ActiveRecord::Migration
  def change
    rename_column :crop_types, :type, :crop_type
  end
end
