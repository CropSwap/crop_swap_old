class CreateCropTypes < ActiveRecord::Migration
  def change
    create_table :crop_types do |t|
      t.string :type

      t.timestamps null: false
    end
  end
end
