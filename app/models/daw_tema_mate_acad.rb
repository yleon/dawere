class DawTemaMateAcad < ActiveRecord::Base
	belongs_to :daw_mate_acad 
	belongs_to :daw_tema
	has_many :daw_asistir

	validates :tmac_orden, presence: true
end
