class CreateDawMatriculas < ActiveRecord::Migration
  def change
    create_table :daw_matriculas do |t|
      t.string :matri_nombre
      t.string :matri_estado
      t.integer :matri_tipoprecio

      t.timestamps null: false
    end
  end
end
