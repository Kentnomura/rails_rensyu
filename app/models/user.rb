class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
         
    has_many :post_images, dependent: :destroy #たくさんのpost_image なおかつuserを削除したらpost_imageも削除
    
end
