class CreateChallenges < ActiveRecord::Migration[5.2]
  def change
    create_table :challenges do |t|
      t.string :title
      t.string :description
      t.string :category
      t.references :role_model, foreign_key: true

      t.timestamps
    end
  end
end
