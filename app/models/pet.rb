class Pet < ApplicationRecord
  mount_uploader :photo, PhotoUploader
  belongs_to :user
  has_many :orders

  def get_photo
    if photo.present?
      photo
    else
      "https://raw.githubusercontent.com/lewagon/fullstack-images/master/uikit/greece.jpg"
    end
  end
end
