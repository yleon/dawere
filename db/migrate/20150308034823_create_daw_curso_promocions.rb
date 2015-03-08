class CreateDawCursoPromocions < ActiveRecord::Migration
  def change
    create_table :daw_curso_promocions do |t|
      t.references :daw_promocion, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_curso_promocions, :daw_promocions
  end
end
