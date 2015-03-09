class CreateDawPreguntaes < ActiveRecord::Migration
  def change
    create_table :daw_preguntaes do |t|
      t.text :pre_encabezado
      t.integer :pre_orden
      t.references :daw_sondeo, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_preguntaes, :daw_sondeos
  end
end
