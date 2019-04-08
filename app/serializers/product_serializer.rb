class ProductSerializer < ActiveModel::Serializer
  has_many :orders
  has_many :users, through: :orders
  attributes :id, :title, :price, :img, :item_id, :created_at
end
