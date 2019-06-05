class RoleModel < ApplicationRecord
  has_many :challenges
  validates :last_name, presence: true

  def gender?
    gender == "Female" ? "her" : "him"
  end
end
