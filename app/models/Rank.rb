class Rank < ActiveRecord::Base
  # Associations

  # Ranks belong to sailors
  belongs_to :sailor

  # Validations

  validates :skill, presence: true
  validates :level,
    presence: true,
    numericality: { greater_than_or_equal_to: 1, less_than_or_equal_to: 3}

  validate :valid_skills

  def valid_skills
    if !%w(cooking mechanics fishing).include? self.skill
      errors.add(:skill, "must be either cooking, mechanics, or fishing")
    end
  end

end
