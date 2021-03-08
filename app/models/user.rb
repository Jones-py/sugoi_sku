class User < ApplicationRecord
  has_many :comments
  has_many :courses
  has_many :aplications

  validates :first_name,  presence: true, length: { maximum: 200 }
  validates :last_name, presence: true, length: { maximum: 200 }
  validates :email,  presence: true

  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
