class CreateDawRelacions < ActiveRecord::Migration
  def change
    create_table :daw_relacions do |t|
      t.integer :rela_tiporepresentante
      t.references :daw_persona, index: true
      t.references :daw_persona, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_relacions, :daw_personas
    add_foreign_key :daw_relacions, :daw_personas
  end
end
