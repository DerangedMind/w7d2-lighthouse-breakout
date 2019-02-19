class Ship < ActiveRecord::Base
  belongs_to :fleet
  has_many :duties, dependent: :destroy
end
