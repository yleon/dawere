class CreateDawRegistros < ActiveRecord::Migration
  def change
    create_table :daw_registros do |t|
      t.integer :reg_idregtab
      t.string :nemonico
      t.text :reg_descripcion
      t.integer :reg_integer
      t.string :reg_char
      t.string :reg_varchar
      t.float :reg_float
      t.boolean :reg_boolean
      t.date :reg_fecha
      t.boolean :reg_activo
      t.references :daw_tabla, index: true
      add_column :daw_registro, :nemonico, :primary_key

      t.timestamps null: false
    end
    add_foreign_key :daw_registros, :daw_tablas
  end
end
