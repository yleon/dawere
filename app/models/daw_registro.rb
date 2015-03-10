class DawRegistro < ActiveRecord::Base
  belongs_to :daw_tabla
  validates :daw_tabla, presence: true
  validates :reg_descripcion, :reg_fecha, :reg_activo, presence: true
  validates :reg_descripcion, length: { minimum: 2, maximum: 500 }

end
