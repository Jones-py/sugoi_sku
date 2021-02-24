class User < ApplicationRecord
  has_many :comments
  has_many :courses
  has_many :course_applications

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,:confirmable,
         :recoverable, :rememberable, :validatable
end
