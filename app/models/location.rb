class Location < ApplicationRecord
  validates :name, :days, presence: true
  belongs_to :trip
  has_one :address
end
