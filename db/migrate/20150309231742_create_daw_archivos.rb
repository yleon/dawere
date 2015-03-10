class CreateDawArchivos < ActiveRecord::Migration
  def change
    create_table :daw_archivos do |t|
       t.text :archivo_linea
       
      t.timestamps null: false
    end
  end
end
