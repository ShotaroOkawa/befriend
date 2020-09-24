class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  extend ActiveHash::Associations::ActiveRecordExtensions
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  has_many :articles
  has_many :questions
  has_many :answers
  has_many :user_events
  has_many :events, through: :user_events
  belongs_to_active_hash :gender
  has_one_attached :image  
end
