class CreateDawEvaluacions < ActiveRecord::Migration
  def change
    create_table :daw_evaluacions do |t|
      t.integer :eval_ponderacion
      t.date :eval_periodo
      t.integer :eval_orden
      t.integer :eval_tipoeval
      t.references :daw_actividad, index: true
      t.references :daw_curso_tema, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_evaluacions, :daw_curso_temas
    add_foreign_key :daw_evaluacions, :daw_actividads
  end
end
