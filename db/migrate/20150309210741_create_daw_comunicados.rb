class CreateDawComunicados < ActiveRecord::Migration
  def change
    create_table :daw_comunicados do |t|
      t.string :com_nombre
      t.text :com_texto
      t.integer :com_tipocomunicado
      t.integer :com_estado
      t.date :com_fechaenvio

      t.timestamps null: false
    end
  end
end
