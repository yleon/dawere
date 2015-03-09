class CreateDawEncuests < ActiveRecord::Migration
  def change
    create_table :daw_encuests do |t|
      t.string :enc_nombre
      t.text :enc_descripcion
      t.string :enc_tipoencuest

      t.timestamps null: false
    end
  end
end
