class Bookmarked < ApplicationRecord
  belongs_to :user
  belongs_to :role_model

end
