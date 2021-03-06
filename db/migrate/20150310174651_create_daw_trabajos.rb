class CreateDawTrabajos < ActiveRecord::Migration
  def change
    create_table :daw_trabajos do |t|
      t.string :trab_nombre
      t.string :trab_tipo
      t.string :trab_tlf
      t.string :trab_direccion
      t.date :trab_fecha
      t.string :trab_estado
      t.references :daw_representante, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_trabajos, :daw_representantes
  end
end
