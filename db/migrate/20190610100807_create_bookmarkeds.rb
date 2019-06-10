class CreateBookmarkeds < ActiveRecord::Migration[5.2]
  def change
    create_table :bookmarkeds do |t|
      t.references :user, foreign_key: true
      t.references :role_model, foreign_key: true

      t.timestamps
    end
  end
end
