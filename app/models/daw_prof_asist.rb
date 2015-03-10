class DawProfAsist < DawPersona
	has_many :daw_contratos
	has_many :daw_mate_acads
	validates :pa_profesion, :pa_tipo, :pa_fechaingr, :pa_biografia, presence: true
	validates :pa_profesion, length: { minimum: 2, maximum: 40 }
	validates :pa_biografia, length: { minimum: 10, maximum: 1500 }
end