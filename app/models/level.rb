class Level < ApplicationRecord
  has_many :runs
  has_many :stars
end
