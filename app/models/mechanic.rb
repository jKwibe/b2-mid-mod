class Mechanic < ApplicationRecord
  validates_presence_of :name, :years_of_experience
  has_many :mechanic_projects
  has_many :rides, through: :mechanic_projects
end
