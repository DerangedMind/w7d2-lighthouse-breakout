class Fleet < ActiveRecord::Base
  has_many :ships, dependent: :destroy

  def ship_names
    self.ships.map { |ship| ship.name }
  end
end
