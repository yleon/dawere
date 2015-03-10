class CreateDawProfAsists < ActiveRecord::Migration
  def change
    create_table :daw_prof_asists do |t|
      t.string :pa_profesion
      t.integer :pa_tipo
      t.date :pa_fechaingr
      t.string :pa_biografia

      t.timestamps null: false
    end
  end
end
