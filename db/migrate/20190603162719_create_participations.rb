class CreateParticipations < ActiveRecord::Migration[5.2]
  def change
    create_table :participations do |t|
      t.string :feedback
      t.integer :difficulty
      t.integer :appreciation
      t.references :challenges, foreign_key: true
      t.references :users, foreign_key: true

      t.timestamps
    end
  end
end
