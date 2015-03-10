class CreateDawTemaMateAcads < ActiveRecord::Migration
  def change
    create_table :daw_tema_mate_acads do |t|
      t.integer :tmac_orden
      t.references :daw_mate_acad, index: true
      t.references :daw_tema, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_tema_mate_acads, :daw_mate_acads
    add_foreign_key :daw_tema_mate_acads, :daw_temas
  end
end
