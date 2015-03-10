class DawAlianza < DawPersona
	has_many :daw_promos
	validates :ali_tipojuridico, length: { minimum: 2, maximum: 500 }
	validates :ali_tipojuridico, presence: true
end
