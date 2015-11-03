json.extract! @user, :id, :email, :name, :phone_number, :description, :zip_code, :created_at, :updated_at, :number_of_crops
json.crops @user.crops, :id, :crop_type_id, :user_id, :description, :weight
