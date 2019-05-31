class User < ApplicationRecord
    validates :name, presence: true, length: { minimum: 10 }
   # validates :email, presence: true, length: { maximum: 255 },
    validates :email, presence: true, uniqueness:true
    has_secure_password
    validates :password, presence: true, length: {minimum: 10}

    def User.digest(string)
        cost = ActiveModel::SecurePassword.min_cost ? BCrypt::Engine::MIN_COST :
                                                      BCrypt::Engine.cost
        BCrypt::Password.create(string, cost: cost)
      end
end
