class CreateDawCodigos < ActiveRecord::Migration
  def change
    create_table :daw_codigos do |t|
      t.integer :cod_valor
      t.string :cod_estado
      t.references :daw_promocion, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_codigos, :daw_promocions
  end
end
