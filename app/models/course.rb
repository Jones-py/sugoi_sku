class Course < ApplicationRecord
  has_many :comments
  belongs_to :user
  has_many :aplications
  default_scope { order(created_at: :desc)}
  
  validates :description, presence: true, length: { maximum: 700}
  validates :category, presence: true, length: { maximum:30}
  validates :course_period, presence: true, length: { maximum: 50}
end
