class CreateDawLugars < ActiveRecord::Migration
  def change
    create_table :daw_lugars do |t|
      t.string :lugar_nombre
      t.string :lugar_tipo
      t.integer :lugar_nivel
      t.references :daw_lugar, index: true

      t.timestamps null: false
    end
    add_foreign_key :daw_lugars, :daw_lugars
  end
end
