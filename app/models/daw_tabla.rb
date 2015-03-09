class DawTabla < ActiveRecord::Base
	has_many :daw_historicocambio
	validates :tab_nombre, :tab_nemonico, presence: true
	validates :tab_nombre, uniqueness: true
	validates :tab_nemonico, uniqueness: true
	validates :tab_nombre, length: { minimum: 2 maximum: 25 }
	validates :tab_nemonico, length: { minimum: 2 maximum: 30 }
end
