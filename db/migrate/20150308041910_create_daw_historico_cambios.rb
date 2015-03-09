class CreateDawHistoricoCambios < ActiveRecord::Migration
  def change
    create_table :daw_historico_cambios do |t|
      t.integer :his_cam_idtabla
      t.integer :his_cam_idregistro
      t.date :his_cam_fecha
      t.text :his_cam_descripcion
      t.string :his_cam_campo
      t.string :his_cam_estado
      t.string :his_cam_login

      t.timestamps null: false
    end
  end
end
