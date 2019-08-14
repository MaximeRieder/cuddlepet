class Pet < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :orders

  def get_photo
    if photo.present?
      photo
    else
      "http://res.cloudinary.com/dvvefb7if/image/upload/v1565776539/petouts_kgxno1.jpg"
    end
  end
end
