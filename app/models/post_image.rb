class PostImage < ApplicationRecord
  
   has_one_attached :image #画像
   belongs_to :user #1つのuser
end
