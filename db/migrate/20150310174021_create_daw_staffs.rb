class CreateDawStaffs < ActiveRecord::Migration
  def change
    create_table :daw_staffs do |t|
      t.date :staff_fechaingr
      t.date :staff_fechasalida
      t.string :staff_estado

      t.timestamps null: false
    end
  end
end
