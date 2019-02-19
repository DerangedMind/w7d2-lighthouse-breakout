class Duty < ActiveRecord::Base
  # Associations

  # Duties can have many sailors assigned to them
  has_and_belongs_to_many :sailors, dependent: :destroy
  belongs_to :ship

  # Validations

  # A sailor can only be assigned a duty if they meet the
  #  duty requirements (skill & required rank should meet
  #  one of sailor's ranks)
end
