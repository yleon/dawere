class DawMatricula < ActiveRecord::Base
	has_many :daw_curso_matricula

	validates :matri_nombre, :matri_estado, :matri_tipoPrecio, presence: true
	validates :matri_nombre, uniqueness: true
end
