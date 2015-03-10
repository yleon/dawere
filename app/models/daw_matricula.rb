class DawMatricula < ActiveRecord::Base
	has_many :daw_curso_matricula
	has_many :daw_matricula_promo
	has_many :daw_inscripcion

	validates :matri_nombre, :matri_estado, :matri_tipoprecio, presence: true
	validates :matri_nombre, uniqueness: true
end
