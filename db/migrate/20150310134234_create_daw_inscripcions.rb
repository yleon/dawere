class CreateDawInscripcions < ActiveRecord::Migration
  def change
    create_table :daw_inscripcions do |t|
      t.date :insc_fechaini
      t.date :insc_fechafin
      t.string :insc_estado
      t.integer :insc_tipo
      t.string :insc_estadopago
      t.string :insc_estadodoc
      t.references :daw_curso, index: true
      t.references :daw_matricula, index: true
      t.references :daw_rol_pers_insc, index: true


      t.timestamps null: false
    end
    add_foreign_key :daw_inscripcions, :daw_cursos
    add_foreign_key :daw_inscripcions, :daw_matriculas
    add_foreign_key :daw_inscripcions, :daw_rol_pers_inscs
  end
end
