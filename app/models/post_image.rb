class PostImage < ApplicationRecord

   has_one_attached :image #画像
   belongs_to :user #1つのuser
   has_many :post_comments, dependent: :destroy
   has_many :favorite, dependent: :destroy

   def get_image
    unless image.attached?
      file_path = Rails.root.join('app/assets/images/no_image.jpg')
      image.attach(io: File.open(file_path), filename: 'default-image.jpg', content_type: 'image/jpeg')
    end
    image
   end

    def favorited_by?(user)
      favorite.exists?(user_id: user.id)
    end
end
