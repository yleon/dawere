class CreateDawAlianzas < ActiveRecord::Migration
  def change
    create_table :daw_alianzas do |t|
      t.integer :ali_tipojuridico

      t.timestamps null: false
    end
  end
end
