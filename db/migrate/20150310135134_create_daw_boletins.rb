class CreateDawBoletins < ActiveRecord::Migration
  def change
    create_table :daw_boletins do |t|
      t.integer :bltin_nota
      t.string :bltin_progresoasist
      t.string :bltin_progresoeval
      t.float :bltin_porcentaje
      t.date :bltin_fechafin
      t.references :daw_curso, index: true
      t.references :daw_inscripcion, index:true

      t.timestamps null: false
    end
    add_foreign_key :daw_boletins, :daw_cursos
    add_foreign_key :daw_boletins, :daw_inscripcions
  end
end
