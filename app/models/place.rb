class Place < ApplicationRecord
  belongs_to :user
  validates :name, presence: true, :address, presence: true, :description, presence: true
end
