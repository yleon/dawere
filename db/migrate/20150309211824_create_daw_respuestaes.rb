class CreateDawRespuestaes < ActiveRecord::Migration
  def change
    create_table :daw_respuestaes do |t|
      t.integer :res_valor
      t.date :res_fecha
      t.references :daw_preguntae, index: true
      t.references :daw_persona, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_respuestaes, :daw_preguntaes
    add_foreign_key :daw_respuestaes, :daw_personas
  end
end
