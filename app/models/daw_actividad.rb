class DawActividad < ActiveRecord::Base
	has_many :daw_pregunt, :daw_evaluacion

	validates :act_nombre, :act_descripcion, :act_disponible, :act_duracion, :act_estado, :act_cantidadPreg, presence: true
	validates :act_descripcion, length: { minimum: 2 maximum: 1500 }
end
