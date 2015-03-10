class DawRespuest < ActiveRecord::Base
	belongs_to :daw_opcion
	belongs_to :daw_calificacion

	validates :resp_puntaje, :resp_valor, presence:true
end