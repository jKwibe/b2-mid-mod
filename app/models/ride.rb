class Ride < ApplicationRecord
  validates_presence_of :name, :rating
  belongs_to :park
  has_many :mechanic_projects
  has_many :mechanics, through: :mechanic_projects

  def self.average_rating
    self.average(:rating)
  end
end
