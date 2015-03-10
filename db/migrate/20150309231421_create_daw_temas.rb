class CreateDawTemas < ActiveRecord::Migration
  def change
    create_table :daw_temas do |t|
      t.string :tema_nombre
      t.time :tema_duracion

      t.timestamps null: false
    end
  end
end
