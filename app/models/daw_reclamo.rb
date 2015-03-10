class DawReclamo < ActiveRecord::Base
  belongs_to :daw_persona

  validates :recl_descripcion, :recl_fecha, :recl_atendido, :recl_tiporeclamo, presence: true
  validates :lugar_nombre, length: { minimum: 5, maximum: 244 }
end
