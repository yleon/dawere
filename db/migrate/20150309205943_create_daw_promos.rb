class CreateDawPromos < ActiveRecord::Migration
  def change
    create_table :daw_promos do |t|
      t.string :promo_nombre
      t.float :promo_porcentaje
      t.date :promo_fechaini
      t.date :promo_fechafin
      t.integer :promo_tipopromo
      t.integer :promo_estado
      t.references :daw_alianza, index: true

      t.timestamps null: false
    end
      add_foreign_key :daw_promos, :daw_alianzas
  end
end
