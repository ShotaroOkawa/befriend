class Event < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to_active_hash :country
  belongs_to_active_hash :category
  has_one_attached :image  
  has_many :user_events
  has_many :users, through: :user_events, dependent: :destroy
end
