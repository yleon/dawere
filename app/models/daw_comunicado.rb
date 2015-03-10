class DawComunicado < ActiveRecord::Base
	has_many :daw_curso_comunicado
	validates :com_nombre, :com_texto, :com_tipocomunicado, :com_estado, :com_fechaenvio, presence: true
	validates :com_nombre, length: { minimum: 5, maximum: 500 }
	validates :com_texto, length: { minimum: 5, maximum: 1500 }

	def CrearCupones
	end
end

