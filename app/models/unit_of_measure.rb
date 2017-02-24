class UnitOfMeasure < ApplicationRecord
  has_many :rates
  has_many :additional_items
end
