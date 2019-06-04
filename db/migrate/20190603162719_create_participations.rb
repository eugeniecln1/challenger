class CreateParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :participations do |t|
      t.string :feedback
      t.integer :difficulty
      t.integer :appreciation
      t.references :challenge, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
