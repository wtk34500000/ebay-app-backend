class UserSerializer < ActiveModel::Serializer
  has_many :orders
  has_many :products, through: :orders
  attributes :id, :first_name, :last_name, :user_name, :email, :created_at
end
