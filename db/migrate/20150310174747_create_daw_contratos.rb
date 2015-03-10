class CreateDawContratos < ActiveRecord::Migration
  def change
    create_table :daw_contratos do |t|
      t.integer :cont_tiempo
      t.date :cont_fechaini
      t.date :cont_fechafin
      t.string :cont_archivo
      t.string :cont_descripcion
      t.references :daw_persona, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_contratos, :daw_personas
  end
end
