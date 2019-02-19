class Ship < ActiveRecord::Base
  belongs_to :fleet

  # Ships have many sailors
end
