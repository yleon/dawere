class CreateDawMateAcads < ActiveRecord::Migration
  def change
    create_table :daw_mate_acads do |t|
      t.string :mac_nombre
      t.text :mac_descrip
      t.string :mac_archivo
      t.boolean :mac_disponible
      t.string :mac_estado
      t.string :mac_url
      t.integer :mac_tipo
      t.string :mac_palabsclave, array: true, default: []
      t.references :daw_prof_asist, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_mate_acads, :daw_prof_asists
  end
end
