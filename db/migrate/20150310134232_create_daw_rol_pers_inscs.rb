class CreateDawRolPersInscs < ActiveRecord::Migration
  def change
    create_table :daw_rol_pers_inscs do |t|
      t.string :rpi_tiporol
      t.references :daw_persona, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_rol_pers_inscs, :daw_personas
  end
end
