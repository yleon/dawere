class CreateDawEstudiantes < ActiveRecord::Migration
  def change
    create_table :daw_estudiantes do |t|
      t.string :estu_nacionalidad
      t.string :estu_biografia

      t.timestamps null: false
    end
  end
end
