class CreateDawReclamos < ActiveRecord::Migration
  def change
    create_table :daw_reclamos do |t|
      t.text :recl_descripcion
      t.time :recl_fecha
      t.boolean :recl_atendido
      t.integer :recl_tiporeclamo
      t.references :daw_persona, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_reclamos, :daw_personas
  end
end
