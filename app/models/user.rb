class User < ApplicationRecord
  has_many :responses
  has_many :events, through: :responses
end
