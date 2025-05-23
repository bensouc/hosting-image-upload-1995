class Article < ApplicationRecord
  has_one_attached :photo
  # mon_article.photo

  def photo_url
    if photo.attached?
      cl_image_path article.photo.key, height: 300, crop: :fill
    else
      ""
    end
  end
end
