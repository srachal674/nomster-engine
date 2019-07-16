class Place < ApplicationRecord
  belongs_to :user
  validates :name, length: {minimum: 3}, presence: true
  validates :address, :description, presence: true
end
