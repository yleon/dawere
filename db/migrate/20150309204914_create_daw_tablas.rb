class CreateDawTablas < ActiveRecord::Migration
  def change
    create_table :daw_tablas do |t|
      t.string :tab_nombre
      t.string :tab_nemonico

      t.timestamps null: false
    end
  end
end
