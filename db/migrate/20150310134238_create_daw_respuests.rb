class CreateDawRespuests < ActiveRecord::Migration
  def change
    create_table :daw_respuests do |t|
      t.string :resp_puntaje
      t.string :resp_texto
      t.references :daw_opcion, index: true
      t.references :daw_calificacion, index:true

      t.timestamps null: false
    end
    add_foreign_key :daw_respuests, :daw_opcions
    add_foreign_key :daw_respuests, :daw_calificacions
  end
end
