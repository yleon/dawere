class CreateDawDirectors < ActiveRecord::Migration
  def change
    create_table :daw_directors do |t|
      t.date :dire_fechaingr

      t.timestamps null: false
    end
  end
end
