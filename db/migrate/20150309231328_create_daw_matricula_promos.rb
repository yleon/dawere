class CreateDawMatriculaPromos < ActiveRecord::Migration
  def change
    create_table :daw_matricula_promos do |t|
      t.references :daw_promo, index: true
      t.references :daw_matricula, index:true

      t.timestamps null: false
    end
    add_foreign_key :daw_matricula_promos, :daw_promos
    add_foreign_key :daw_matricula_promos, :daw_matriculas
  end
end
