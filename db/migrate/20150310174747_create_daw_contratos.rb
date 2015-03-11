class CreateDawContratos < ActiveRecord::Migration
  def change
    create_table :daw_contratos do |t|
      t.integer :cont_tiempo
      t.date :cont_fechaini
      t.date :cont_fechafin
      t.string :cont_archivo
      t.string :cont_descripcion
      t.references :daw_prof_asist, index: true
      t.references :daw_curso, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_contratos, :daw_prof_asists
    add_foreign_key :daw_contratos, :daw_cursos
  end
end
