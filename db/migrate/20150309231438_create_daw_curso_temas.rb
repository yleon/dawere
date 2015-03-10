class CreateDawCursoTemas < ActiveRecord::Migration
  def change
    create_table :daw_curso_temas do |t|
      t.integer :cursotema_ordenTema
      t.integer :cursotema_semana
      t.references :daw_curso, index: true
      t.references :daw_tema, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_curso_temas, :daw_cursos
    add_foreign_key :daw_curso_temas, :daw_temas
  end
end
