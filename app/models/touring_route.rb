class TouringRoute < ApplicationRecord
  has_many :comments ,dependent: :destroy
end
