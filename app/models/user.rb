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

    def authenticate
      authenticate_or_request_with_http_token do |token, options|
        token == TOKEN
      end
    end

end
