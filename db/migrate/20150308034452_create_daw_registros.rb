class CreateDawRegistros < ActiveRecord::Migration
  def change
    create_table :daw_registros do |t|
      t.integer :reg_idregtab
      t.text :reg_descripcion
      t.string :reg_char
      t.string :reg_varchar
      t.float :reg_float
      t.boolean :reg_boolean
      t.date :reg_fecha
      t.string :reg_activo
      t.references :daw_tabla, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_registros, :daw_tablas
  end
end
