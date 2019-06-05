class Participation < ApplicationRecord
  # RATINGS = [1, 2, 3, 4, 5]
  belongs_to :challenge
  belongs_to :user
  # validates :appreciation, :difficulty, inclusion: { in: RATINGS }

  def validated?
    # renvoie true si le feedback est bien rempli (challenge valide) et false si le challenge n'est pas rempli (challenge non valide)
    (!difficulty.nil? && !appreciation.nil? && !feedback.nil?)
  end
end
