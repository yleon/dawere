class DawTrabajo < ActiveRecord::Base
  belongs_to :daw_representante

  validates :trab_nombre, :trab_tipo, :trab_fecha, :trab_estado, presence: true
  validates :trab_nombre, length: { minimum: 10, maximum: 60 }
end
