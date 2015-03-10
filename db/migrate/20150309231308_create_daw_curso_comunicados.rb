class CreateDawCursoComunicados < ActiveRecord::Migration
  def change
    create_table :daw_curso_comunicados do |t|
      t.date :curcom_fechaenviado
      t.references :daw_comunicado, index: true
      t.references :daw_curso, index:true

      t.timestamps null: false
    end
    add_foreign_key :daw_curso_comunicados, :daw_comunicados
    add_foreign_key :daw_curso_comunicados, :daw_cursos
  end
end
