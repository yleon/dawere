class CreateDawLogtransaccions < ActiveRecord::Migration
  def change
    create_table :daw_logtransaccions do |t|
      t.text :logt_sesion
      t.text :logt_descripcion
      t.date :logt_fecha
      t.string :logt_estado
      t.text :logt_transaccion
      t.text :logt_argumento1
      t.text :logt_argumento2

      t.timestamps null: false
    end
  end
end
