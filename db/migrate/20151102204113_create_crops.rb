class CreateCrops < ActiveRecord::Migration
  def change
    create_table :crops do |t|
      t.integer :user_id
      t.integer :crop_type_id
      t.text :description
      t.integer :weight

      t.timestamps null: false
    end
  end
end
