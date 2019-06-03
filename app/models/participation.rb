class Participation < ApplicationRecord
  belongs_to :challenges
  belongs_to :users
  validates :feedback
end
