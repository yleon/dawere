class DawOpcion < ActiveRecord::Base
	belongs_to :daw_pregunt
	has_many :daw_respuest

	validates :opc_descripcion, :opc_motivo, :opc_tipo, presence:true
	validates :opc_descripcion, length: { minimum: 2, maximum: 1500 }
end
