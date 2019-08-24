class TouringRoute < ApplicationRecord
  has_many :comments
  belongs_to :rider
end
