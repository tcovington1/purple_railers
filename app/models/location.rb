class Location < ApplicationRecord
  belongs_to :trip, dependent: :destroy
  has_many :addresses, dependent: :destroy

  validates :name, :days, presence: true
end
