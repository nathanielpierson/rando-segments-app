class Level < ApplicationRecord
  has_many :runs
  has_many :stars
  has_many :frames
end
