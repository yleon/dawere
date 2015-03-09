class CreateDawCursoPromos < ActiveRecord::Migration
  def change
    create_table :daw_curso_promos do |t|
      t.references :daw_promo, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_curso_promos, :daw_promos
  end
end
