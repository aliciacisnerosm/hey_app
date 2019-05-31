class User < ApplicationRecord
    validates :name, presence: true, length: { minimum: 4 }
   # validates :email, presence: true, length: { maximum: 255 },
    validates :email, presence: true, uniqueness:true
    has_secure_password
    validates :password, presence: true, length: {minimum: 6}
end
