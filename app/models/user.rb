class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable  
  devise :database_authenticatable, :registerable,
    :recoverable, :rememberable, :validatable

  has_many :posts, dependent: :destroy
  has_many :diseases, dependent: :destroy
  has_many :comments, dependent: :destroy

  has_many :notifications, as: :recipient, dependent: :destroy

  #imagenes
  has_one_attached :fotoP
  

  include PermissionsConcern
  #permisos level rol usuario




  has_many :histories, dependent: :destroy
  has_many :supports, dependent: :destroy
  has_many :has_diseases




end
