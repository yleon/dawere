class DawAsistir < ActiveRecord::Base
	belongs_to :daw_tema_mate_acad
	has_many :daw_inscripcion

	validates :asist_fecha, presence:true
end