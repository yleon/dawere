class CreateDawCursos < ActiveRecord::Migration
  def change
    create_table :daw_cursos do |t|
      t.string :curso_nombre
      t.text :curso_descripcionmeta
      t.text :curso_descripcioncurso
      t.text :curso_descripcionpasos
      t.string :curso_estado
      t.integer :curso_periodo
      t.integer :curso_tipolapso
      t.integer :curso_tipoprecio
      t.boolean :curso_visible
      t.references :daw_periodo_acad, index: true
      t.references :daw_grado, index: true
      t.references :daw_asignatura, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_cursos, :daw_periodo_acads
    add_foreign_key :daw_cursos, :daw_grados
    add_foreign_key :daw_cursos, :daw_asignaturas
  end
end
