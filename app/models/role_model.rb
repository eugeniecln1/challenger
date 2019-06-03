class RoleModel < ApplicationRecord
  has_many :challenges
  validates :last_name, presence: true
end
