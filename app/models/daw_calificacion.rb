class DawCalificacion < ActiveRecord::Base
	belongs_to :daw_inscripcion
	belongs_to :daw_actividad
	has_many :daw_respuest

	validates :calif_notaobtenida, :calif_presento, :calif_fecha, presence:true
end
