class DawInscripcion < ActiveRecord::Base
	belongs_to :daw_curso
	belongs_to :matricula
	has_many :daw_calificacions
	has_many :daw_boletas
	has_many :daw_asistirs
	has_one :daw_codigos
	has_one :daw_retiros

	validates :insc_fechaini, :insc_fechafin, :insc_estado, :insc_tipo, :insc_estadopago, :insc_estadodoc, presence:true


end