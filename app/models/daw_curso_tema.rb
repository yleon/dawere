class DawCursoTema < ActiveRecord::Base
	belongs_to :daw_curso 
	belongs_to :daw_tema
	has_many :daw_evaluacion

	validates :cursotema_ordenTema, :cursotema_semana, presence: true
end
