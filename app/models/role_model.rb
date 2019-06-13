class RoleModel < ApplicationRecord
  SECTOR = ["Tech", "Acting", "Dance", "Digital", "Mathematics", "Physics", "Sports", "Business", "Entrepreneurship", "Entertainment"]
  GENDER = ["Male", "Female", "Other"]
  has_many :challenges
  has_many :bookmarkeds, dependent: :destroy
  validates :last_name, presence: true
  validates :sector, presence: true, inclusion: { in: SECTOR }
  validates :gender, presence: true, inclusion: { in: GENDER }

  def gender?
    gender == "Female" ? "her" : "him"
  end
end
