class CreateDawRetiros < ActiveRecord::Migration
  def change
    create_table :daw_retiros do |t|
      t.date :ret_fecha
      t.string :ret_motivo
      t.references :daw_persona, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_retiros, :daw_personas
  end
end
