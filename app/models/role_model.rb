class RoleModel < ApplicationRecord
  SECTOR = ["Tech", "Music", "Acting", "Film Directing", "Production", "Animation", "Fictional", "Writing", "Artist", "Programming", "Mathematics", "Environment", "Sports", "Business", "Entrepreneurship", "Entertainment"]
  GENDER = ["Male", "Female", "Other"]
  has_many :challenges
  has_many :bookmarkeds, dependent: :destroy
  validates :last_name, presence: true
  validates :sector, presence: true
  validates :gender, presence: true, inclusion: { in: GENDER }

  def gender?
    gender == "Female" ? "her" : "him"
  end
end
