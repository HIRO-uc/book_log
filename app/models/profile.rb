class Profile < ApplicationRecord
  belongs_to :user
  has_one_attached :image
  validates :nickname, presence: true
  validates :self_introduction, length: { maximum: 200 }
  validates :website,           length: { maximum: 100 }
end
