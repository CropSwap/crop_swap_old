class User < ActiveRecord::Base
  has_secure_password
  validates :email, presence: true

  has_many :crops
  has_many :tokens

  has_attached_file :profile_pic, styles: {
    thumb: '100x100>',
    square: '200x200#',
    medium: '300x300>'
  }
  validates_attachment_content_type :profile_pic, content_type: /\Aimage\/.*\Z/

  def check_for_token
    token = Token.find_by_access_token(params[:access_token])
    u.tokens.include?(token)
  end

end
