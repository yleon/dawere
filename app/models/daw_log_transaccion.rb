class DawLogTransaccion < ActiveRecord::Base
	validates :logt_sesion, :logt_descripcion, :logt_fecha, :logt_transaccion, presence: true
	validates :logt_transaccion, length: { minimum: 2, maximum: 1000}
	validates :logt_argumento1, length: { minimum: 2, maximum: 1000 }
	validates :logt_argumento2, length: { minimum: 2, maximum: 1000 }
end
