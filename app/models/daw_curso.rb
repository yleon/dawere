class DawCurso < ActiveRecord::Base
	belongs_to :daw_per_academico
	belongs_to :daw_grado 
	belongs_to :daw_materia
	has_many :daw_cursomatri, :daw_curso_sondeo, :daw_curso_promocion, :daw_curso_comunicado, :daw_curso_tema, :daw_inscripcion, :daw_boleta, :daw_contrato 

	validates :curso_nombre, :curso_estado, :curso_periodo, :curso_tipoLapso, :curso_tipoPrecio, presence: true
	validates :curso_nombre, uniqueness: true, length: { minimum: 2 maximum: 20 }
	validates :curso_descripcionMeta, :curso_descripcionCurso, :curso_descripcionPasos, length: { minimum: 2 maximum: 1500 }
end
