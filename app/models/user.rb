class User < ApplicationRecord
  has_many :comments, dependent: :destroy
  has_many :courses, dependent: :destroy
  has_many :aplications

  validates :first_name,  presence: true, length: { maximum: 200 }
  validates :last_name, presence: true, length: { maximum: 200 }
  validates :email,  presence: true
  validates_numericality_of :mobile_number, :only_integer =>true,
                            :greater_than =>0



  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
