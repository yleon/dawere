class CreateDawHistCambios < ActiveRecord::Migration
  def change
    create_table :daw_hist_cambios do |t|
      t.integer :hcam_idtabla
      t.integer :hcam_idregistro
      t.date :hcam_fecha
      t.text :hcam_descripcion
      t.string :hcam_campo
      t.string :hcam_estado
      t.string :hcam_login

      t.timestamps null: false
    end
  end
end
