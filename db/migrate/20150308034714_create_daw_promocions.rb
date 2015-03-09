class CreateDawPromocions < ActiveRecord::Migration
  def change
    create_table :daw_promocions do |t|
      t.string :pro_nombre
      t.float :pro_porcentaje
      t.date :pro_fechainicio
      t.date :pro_fechafin
      t.string :pro_tipopromocion
      t.string :pro_estado

      t.timestamps null: false
    end
  end
end
