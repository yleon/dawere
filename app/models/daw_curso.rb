class DawCurso < ActiveRecord::Base
	belongs_to :daw_per_academico
	belongs_to :daw_grado 
	belongs_to :daw_materia
	has_many :daw_curso_matricula 
	has_many :daw_curso_tema

	validates :curso_nombre, :curso_estado, :curso_periodo, :curso_tipoLapso, :curso_tipoPrecio, presence: true
	validates :curso_nombre, uniqueness: true, length: { minimum: 2, maximum: 20 }
	validates :curso_descripcionMeta, :curso_descripcionCurso, :curso_descripcionPasos, length: { minimum: 2, maximum: 1500 }
end
