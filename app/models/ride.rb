class Ride < ApplicationRecord
  validates_presence_of :name, :rating
  belongs_to :park
end
