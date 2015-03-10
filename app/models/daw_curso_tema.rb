class DawCursoTema < ActiveRecord::Base
	belongs_to :daw_curso, :daw_tema
	has_many :daw_evaluacion

	validates :cursotema_ordenTema, :cursotema_semana, presence: true
end
