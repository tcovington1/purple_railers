class Location < ApplicationRecord
  belongs_to :trip
  has_one :address
  validates :name, :days, presence: true
end
