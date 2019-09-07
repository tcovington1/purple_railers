class Address < ApplicationRecord
  validates :street, :city, :state, :zip, presence: true
  belongs_to :location


end
