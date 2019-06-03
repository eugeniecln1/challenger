class CreateRoleModels < ActiveRecord::Migration[5.2]
  def change
    create_table :role_models do |t|
      t.string :first_name
      t.string :last_name
      t.string :sector
      t.string :gender
      t.string :description
      t.string :picture

      t.timestamps
    end
  end
end
