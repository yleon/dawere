class DawTemaMateAcad < ActiveRecord::Base
	belongs_to :daw_mate_acad, :daw_tema

	validates :tmac_orden, presence: true
end
