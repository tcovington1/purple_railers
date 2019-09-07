class Address < ApplicationRecord
  belongs_to :location, dependent: :destroy

  validates :street, :city, :state, :zip, presence: true

end
