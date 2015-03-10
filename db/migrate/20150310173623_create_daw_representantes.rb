class CreateDawRepresentantes < ActiveRecord::Migration
  def change
    create_table :daw_representantes do |t|
      t.string :repr_profesion
      t.boolean :repr_sostenfamiliar

      t.timestamps null: false
    end
  end
end
