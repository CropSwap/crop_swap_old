class Tokens < ActiveRecord::Migration
  def change
    create_table :tokens do |t|
      t.integer :user_id
      t.string :access_token

      t.timestamps null: false
    end
  end
end
