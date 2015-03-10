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

      t.timestamps null: false
    end
  end
end
