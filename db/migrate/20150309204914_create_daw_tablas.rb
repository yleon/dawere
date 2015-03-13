class CreateDawTablas < ActiveRecord::Migration
  def change
    create_table :daw_tablas do |t|
      t.string :tab_nombre
      t.string :tab_nemonico
      t.string :tab_integer
      t.string :tab_char
      t.string :tab_varchar
      t.string :tab_float 
      t.string :tab_boolean
      t.string :tab_fecha
      t.boolean :tab_activo

      t.timestamps null: false
    end
  end
end
