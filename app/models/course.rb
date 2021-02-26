class Course < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_many :aplications
  validates :name, presence: true, uniqueness: true, length: { maximum:100}
  validates :description, presence: true, length: { maximum: 721}

end
