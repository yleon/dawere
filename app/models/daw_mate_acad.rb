class DawMateAcad < ActiveRecord::Base
	belongs_to :daw_prof_asist

	validates :mac_nombre, :mac_descrip, :mac_archivo, :mac_disponible, :mac_estado, :mac_url, :mac_tipo, :mac_palabsclave, presence: true
	validates :mac_nombre, uniqueness: true
	validates :mac_descrip, length: { minimum: 2, maximum: 1500 }
end
