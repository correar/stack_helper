class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
  has_many :notifications
  has_many :answers
  has_many :questions
  validates :name, presence: true, length: { maximum: 50 }
	validates :bio, presence: true, length:{ maximum: 500 }
end
