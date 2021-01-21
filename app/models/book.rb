class Book < ApplicationRecord
  extend ActiveHash::Associations::ActiveRecordExtensions
  belongs_to :status
  belongs_to :user

  validates :info_link, uniqueness: {scope: :user}
end
