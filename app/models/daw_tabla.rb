class DawTabla < ActiveRecord::Base
	has_many :daw_registros
	validates :tab_nombre, :tab_nemonico, :tab_activo, presence: true
	validates :tab_nombre, uniqueness: true
	validates :tab_nemonico, uniqueness: true
	validates :tab_nombre, length: { minimum: 2, maximum: 150 }
	validates :tab_nemonico, length: { minimum: 2, maximum: 30 }
	validates :tab_integer, length: { minimum: 2, maximum: 300 }
	validates :tab_char, length: { minimum: 2, maximum: 300 }
	validates :tab_varchar, length: { minimum: 2, maximum: 300 }
	validates :tab_float, length: { minimum: 2, maximum: 300 }
	validates :tab_boolean, length: { minimum: 2, maximum: 300 }
	validates :tab_fecha, length: { minimum: 2, maximum: 300 }
end
