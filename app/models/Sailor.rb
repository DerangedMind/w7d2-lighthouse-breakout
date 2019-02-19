class Sailor < ActiveRecord::Base
  # Associations

  # Sailors have many duties
  # Sailors have many ranks

  has_and_belongs_to_many :duties, dependent: :destroy
  has_many :ranks, dependent: :destroy

  # Custom methods
  before_save :add_shirt_color

  def add_shirt_color
    self.shirt_color = %w(blue red green purple).shuffle.first
  end
end
