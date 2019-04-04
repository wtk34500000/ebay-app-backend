class User < ApplicationRecord
    has_secure_password
    validates :first_name, :last_name, :user_name, :email, presence: true
    validates :email, :user_name, uniqueness: true
end
