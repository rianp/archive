class Upload < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true
  belongs_to :user

  has_one_attached :thumbnail
  has_one_attached :file

  has_many :likes, dependent: :destroy

  has_noticed_notifications model_name: 'Notification'
  has_many :notifications, through: :user, dependent: :destroy
end
