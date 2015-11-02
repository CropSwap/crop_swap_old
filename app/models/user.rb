class User < ActiveRecord::Base
  validates :email, presence: true
  has_many :crops
  # has_attached_file :profile_pic
  # validates_attachment_content_type :profile_pic, content_type: /\Aimage\/.*/
end
