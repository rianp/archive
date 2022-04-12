class Upload < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :user

  has_one_attached :thumbnail
  has_one_attached :file
end
