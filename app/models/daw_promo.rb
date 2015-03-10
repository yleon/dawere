class DawPromo < ActiveRecord::Base
	has_many :daw_codigo
	has_many :daw_matricula_promo
	has_many :daw_curso_promo
	validates :promo_nombre, :promo_porcentaje, :promo_fechaini, :promo_fechafin, :promo_tipopromo, :promo_estado, presence: true
	validates :promo_nombre, length: { minimum: 3, maximum: 50 }
end
