class DawActividad < ActiveRecord::Base
	has_many :daw_pregunt
	has_many :daw_evaluacion
	has_many :daw_calificacion

	validates :act_nombre, :act_descripcion, :act_disponible, :act_duracion, :act_estado, :act_cantidadpreg, presence: true
	validates :act_descripcion, length: { minimum: 2, maximum: 1500 }
end

def pruebaGitHub
	end
