class CreateDawMatriculaPromocions < ActiveRecord::Migration
  def change
    create_table :daw_matricula_promocions do |t|
      t.references :daw_promocion, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_matricula_promocions, :daw_promocions
  end
end
