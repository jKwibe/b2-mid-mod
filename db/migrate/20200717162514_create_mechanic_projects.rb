class CreateMechanicProjects < ActiveRecord::Migration[5.1]
  def change
    create_table :mechanic_projects do |t|
      t.references :ride, foreign_key: true
      t.references :mechanic, foreign_key: true

      t.timestamps
    end
  end
end
