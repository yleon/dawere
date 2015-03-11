class DawPromo < ActiveRecord::Base
	belongs_to :daw_alianza
	has_many :daw_codigos
	has_many :daw_matricula_promos
	has_many :daw_curso_promos
	validates :promo_nombre, :promo_porcentaje, :promo_fechaini, :promo_fechafin, :promo_tipopromo, :promo_estado, presence: true
	validates :promo_nombre, length: { minimum: 3, maximum: 50 }
end
