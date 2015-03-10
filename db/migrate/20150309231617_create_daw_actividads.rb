class CreateDawActividads < ActiveRecord::Migration
  def change
    create_table :daw_actividads do |t|
      t.string :act_nombre
      t.text :act_descripcion
      t.boolean :act_disponible
      t.time :act_duracion
      t.boolean :act_estado
      t.integer :act_cantidadPreg

      t.timestamps null: false
    end
  end
end
