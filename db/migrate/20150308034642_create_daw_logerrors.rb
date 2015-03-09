class CreateDawLogerrors < ActiveRecord::Migration
  def change
    create_table :daw_logerrors do |t|
      t.text :loge_sesion
      t.text :loge_descripcion
      t.date :loge_fecha
      t.string :loge_estado
      t.text :loge_error
      t.text :loge_errorbd
      t.text :loge_argumento1
      t.text :loge_argumento2

      t.timestamps null: false
    end
  end
end
