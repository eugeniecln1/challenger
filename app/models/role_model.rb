class RoleModel < ApplicationRecord
  has_many :challenges
  has_many :bookmarkeds
  validates :last_name, presence: true

  def gender?
    gender == "Female" ? "her" : "him"
  end
end
