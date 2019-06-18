class User < ApplicationRecord
  has_secure_password

  has_many :responses
  has_many :events, through: :responses

  validates :name, presence: true
  validates :user_name, presence: true, uniqueness: true
  validates :password, presence: true

  # t.string "name"
  # t.string "user_name"
  # t.string "password"
  # t.string "bio"
  # t.string "pic_url"

end
