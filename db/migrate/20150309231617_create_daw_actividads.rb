class CreateDawActividads < ActiveRecord::Migration
  def change
    create_table :daw_actividads do |t|
      t.string :act_nombre
      t.text :act_descripcion
      t.boolean :act_disponible
      t.time :act_duracion
      t.string :act_estado
      t.integer :act_cantidadpreg

      t.timestamps null: false
    end
  end
end
