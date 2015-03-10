class DawRepresentante < DawPersona
	has_many :daw_trabajos

	validates :repr_profesion, :repr_sostenfamiliar, presence: true
end
