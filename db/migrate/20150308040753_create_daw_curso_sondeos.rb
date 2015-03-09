class CreateDawCursoSondeos < ActiveRecord::Migration
  def change
    create_table :daw_curso_sondeos do |t|
      t.date :cur_son_periodo
      t.references :daw_sondeo, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_curso_sondeos, :daw_sondeos
  end
end
