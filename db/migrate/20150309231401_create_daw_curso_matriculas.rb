class CreateDawCursoMatriculas < ActiveRecord::Migration
  def change
    create_table :daw_curso_matriculas do |t|	
      t.references :daw_curso, index: true
      t.references :daw_matricula, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_curso_matriculas,:daw_cursos
    add_foreign_key :daw_curso_matriculas, :daw_matriculas
  end
end
