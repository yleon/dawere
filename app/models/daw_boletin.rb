class DawBoletin < ActiveRecord::Base
	belongs_to :daw_curso
	belongs_to :daw_inscripcion

	validates :bltin_nota, :bltin_progresoasist, :bltin_progresoeval, :bltin_porcentaje, :bltin_fechafin, presence:true 


end