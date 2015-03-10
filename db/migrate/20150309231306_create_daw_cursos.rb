class CreateDawCursos < ActiveRecord::Migration
  def change
    create_table :daw_cursos do |t|
      t.string :curso_nombre
      t.text :curso_descripcionMeta
      t.text :curso_descripcionCurso
      t.text :curso_descripcionPasos
      t.boolean :curso_estado
      t.integer :curso_periodo
      t.integer :curso_tipoLapso
      t.integer :curso_tipoPrecio
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
