class Order < ApplicationRecord
  belongs_to :user
  belongs_to :pet
  validates :pet, uniqueness: { scope: :pet,
    message: "You can add only one times" }
end
