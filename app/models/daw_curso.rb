class DawCurso < ActiveRecord::Base
	belongs_to :daw_per_academico
	belongs_to :daw_grado 
	belongs_to :daw_materia
	has_many :daw_curso_matricula 
	has_many :daw_curso_tema
	has_many :daw_curso_comunicado
	has_many :daw_curso_encuest
	has_many :daw_curso_promo
	has_many :daw_contrato

	validates :curso_nombre, :curso_estado, :curso_periodo, :curso_tipolapso, :curso_tipoprecio, presence: true
	validates :curso_nombre, uniqueness: true, length: { minimum: 2, maximum: 20 }
	validates :curso_descripcionmeta, :curso_descripcioncurso, :curso_descripcionpasos, length: { minimum: 2, maximum: 1500 }
end
