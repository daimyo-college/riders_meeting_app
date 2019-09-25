class Comment < ApplicationRecord
  belongs_to :touring_route
  belongs_to :user
end
