class Location < ApplicationRecord
  belongs_to :trip
  has_many :addresses, dependent: :destroy
  validates :name, :days, presence: true
end
