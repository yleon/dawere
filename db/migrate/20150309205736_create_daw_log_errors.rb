class CreateDawLogErrors < ActiveRecord::Migration
  def change
    create_table :daw_log_errors do |t|
      t.text :loge_sesion
      t.text :loge_descripcion
      t.date :loge_fecha
      t.string :loge_estado
      t.integer :loge_idregistro
      t.text :loge_errorbd
      t.text :loge_argumento1
      t.text :loge_argumento2

      t.timestamps null: false
    end
  end
end
