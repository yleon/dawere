class DawTema < ActiveRecord::Base
	has_many :daw_curso_tema 
	has_many :daw_tema_mate_acad

	validates :tema_nombre, :tema_duracion, presence: true
	validates :tema_nombre, uniqueness: true, length: { minimum: 2, maximum: 1500 }
end
