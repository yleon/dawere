class DawPregunt < ActiveRecord::Base
	has_many :daw_opcion
	belongs_to :daw_actividad

	validates :preg_descripcion, :preg_ponderacion, :preg_cantOpcion, :preg_tipo, presence:true 
end
