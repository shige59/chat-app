class Room < ApplicationRecord
  has_many :room_users
  has_many :users, through: :room_users
  has_many :messages
  # テーブル名は、room_user
  # でも、has-manyの後に来るからroom_users
  validates :name, presence: true
end
