class DawOpcion < ActiveRecord::Base
	belongs_to :daw_pregunt

	validates :opc_descripcion, :opc_correcta, :opc_motivo, :opc_tipo, presence:true
	validates :opc_descripcion, length: { minimum: 2, maximum: 1500 }
end
