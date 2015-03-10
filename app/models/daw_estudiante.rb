class DawEstudiante < DawPersona
	#has_many :daw_personas, as :pers_relacion_padre
	validates :estu_nacionalidad, presence: true
end
