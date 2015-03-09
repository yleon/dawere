class CreateDawSondeos < ActiveRecord::Migration
  def change
    create_table :daw_sondeos do |t|
      t.string :son_nombre
      t.text :son_descripcion
      t.string :son_tipoencuesta

      t.timestamps null: false
    end
  end
end
