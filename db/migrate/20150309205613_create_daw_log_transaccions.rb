class CreateDawLogTransaccions < ActiveRecord::Migration
  def change
    create_table :daw_log_transaccions do |t|
      t.text :logt_sesion
      t.text :logt_descripcion
      t.date :logt_fecha
      t.string :logt_estado
      t.integer :logt_idregistro
      t.text :logt_argumento1
      t.text :logt_argumento2

      t.timestamps null: false
    end
  end
end
