class Kitten < ApplicationRecord
  validates :name, presence: true
  validates :age, numericality: true
  validates :cuteness, numericality: { less_than_or_equal_to: 10 }
  validates :softness, numericality: { less_than_or_equal_to: 10 }
end
