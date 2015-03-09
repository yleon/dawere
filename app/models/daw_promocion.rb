class DawPromocion < ActiveRecord::Base
	has_many :daw_codigo
	has_many :daw_matricula_promocion
	has_many :daw_curso_promocion
	validates :pro_nombre, :pro_porcentaje, :pro_fechainicio, :pro_fechafin, :pro_tipopromocion, :pro_estado, presence: true
	validates :pro_nombre, length: { minimum: 3 maximum: 50 }
	validates 
end
