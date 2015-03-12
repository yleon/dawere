class CreateDawCalificacions < ActiveRecord::Migration
  def change
    create_table :daw_calificacions do |t|
      t.float :calif_notaobtenida
      t.boolean :calif_presento
      t.date :calif_fecha
      t.references :daw_actividad, index: true
      t.references :daw_inscripcion, index:true

      t.timestamps null: false
    end
    add_foreign_key :daw_calificacions, :daw_actividads
    add_foreign_key :daw_calificacions, :daw_inscripcions
  end
end
