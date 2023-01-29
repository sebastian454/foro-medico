class Post < ApplicationRecord
  validates :title, presence: true, length: { minimum: 4, maximum: 150 }
  validates :body, presence: true, length: { minimum: 20, maximum: 8500 }
  belongs_to :user
  has_many :comments, dependent: :destroy

  has_noticed_notifications model_name: 'Notification'
  has_many :notifications, through: :user
  
  #imagenes
  has_one_attached :imageblog
end
