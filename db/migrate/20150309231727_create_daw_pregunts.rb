class CreateDawPregunts < ActiveRecord::Migration
  def change
    create_table :daw_pregunts do |t|
      t.text :preg_descripcion
      t.float :preg_ponderacion
      t.integer :preg_cantopcion
      t.integer :preg_tipo
      t.references :daw_actividad, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_pregunts, :daw_actividads
  end
end
