class DawGrado < ActiveRecord::Base
	has_many :daw_curso
 	
 	validates :grado_nombre, :grado_estado, presence: true
 	validates :grado_nombre, uniqueness: true
 	validates :per_descripcion, length: { minimum: 2, maximum: 1500 }
end
