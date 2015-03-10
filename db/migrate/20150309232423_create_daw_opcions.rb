class CreateDawOpcions < ActiveRecord::Migration
  def change
    create_table :daw_opcions do |t|
      t.string :opc_descripcion
      t.boolean :opc_correcta
      t.text :opc_motivo
      t.integer :opc_tipo
      t.references :daw_pregunt, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_opcions, :daw_pregunts
  end
end
