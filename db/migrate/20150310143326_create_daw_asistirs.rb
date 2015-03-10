class CreateDawAsistirs < ActiveRecord::Migration
  def change
    create_table :daw_asistirs do |t|
      t.date :asist_fecha
      t.references :daw_inscripcion, index:true
      t.references :daw_tema_mate_acad, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_asistirs, :daw_inscripcions
    add_foreign_key :daw_asistirs, :daw_tema_mate_acads
  end
end
