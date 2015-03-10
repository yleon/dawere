class CreateDawPregunts < ActiveRecord::Migration
  def change
    create_table :daw_pregunts do |t|
      t.string :preg_descripcion
      t.integer :preg_ponderacion
      t.integer :preg_cantOpcion
      t.integer :preg_tipo
      t.references :daw_actividad, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_pregunts, :daw_actividads
  end
end
