class DawAsignatura < ActiveRecord::Base
	has_many :daw_curso

	validates :asig_nombre, presence: true, uniqueness: true
 	validates :asig_descripcion, length: { minimum: 2, maximum: 250 }
end
