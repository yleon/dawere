class CreateDawPeriodoAcads < ActiveRecord::Migration
  def change
    create_table :daw_periodo_acads do |t|
      t.string :pac_nombre
      t.text :pac_descripcion
      t.date :pac_fechaini
      t.date :pac_fechafin
      t.string :pac_estado

      t.timestamps null: false
    end
  end
end
