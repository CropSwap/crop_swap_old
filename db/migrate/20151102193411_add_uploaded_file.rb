class AddUploadedFile < ActiveRecord::Migration
  def change
    add_attachment :users, :profile_pic
  end
end
