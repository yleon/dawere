class DawPersona < ActiveRecord::Base
	#belongs_to :pers_relacion_padre, polymorphic: true
	belongs_to :daw_lugar
	belongs_to :daw_usuario
	has_many :daw_reclamos
	has_many :daw_reclamos
	has_many :daw_retiros
	has_many :daw_rol_pers_insc
	has_many :daw_respuestae
	validates :pers_cedula, :pers_primernom, :pers_primerape, :pers_fechanac, :pers_email, presence: true
	validates :pers_cedula, uniqueness: true, length: { minimum: 2, maximum: 20 }
	validates :pers_tipopers, length: { minimum: 2, maximum: 500 }
end