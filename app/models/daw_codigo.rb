class DawCodigo < ActiveRecord::Base
	belongs_to :daw_promo
	belongs_to :daw_inscripcion
	validates_associated :daw_promo
	validates_presence_of :cod_valor, :cod_estado, :daw_promo
	validates_uniqueness_of :cod_valor
end
