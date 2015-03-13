class CreateDawCursoEncuests < ActiveRecord::Migration
  def change
    create_table :daw_curso_encuests do |t|
      t.integer :curenc_periodo
      t.references :daw_encuest, index: true
      t.references :daw_curso, index:true

      t.timestamps null: false
    end
    add_foreign_key :daw_curso_encuests, :daw_encuests
    add_foreign_key :daw_curso_comunicados, :daw_cursos
  end
end
