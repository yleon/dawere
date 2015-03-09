class CreateDawPromos < ActiveRecord::Migration
  def change
    create_table :daw_promos do |t|
      t.string :promo_nombre
      t.float :promo_porcentaje
      t.date :promo_fechaini
      t.date :promo_fechafin
      t.string :promo_tipopromocion
      t.string :promo_estado

      t.timestamps null: false
    end
  end
end
