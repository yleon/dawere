class CreateDawGrados < ActiveRecord::Migration
  def change
    create_table :daw_grados do |t|
      t.string :grado_nombre
      t.text :grado_descripcion
      t.boolean :grado_estado

      t.timestamps null: false
    end
  end
end
