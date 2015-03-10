class CreateDawAsignaturas < ActiveRecord::Migration
  def change
    create_table :daw_asignaturas do |t|
      t.string :asig_nombre
      t.text :asig_descripcion

      t.timestamps null: false
    end
  end
end
