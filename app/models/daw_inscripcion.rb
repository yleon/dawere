class DawInscripcion < ActiveRecord::Base
	belongs_to :daw_curso
	belongs_to :matricula
	has_many :daw_calificacion
	has_many :daw_boleta
	has_many :daw_asistir
	has_one :daw_codigo
	has_one :daw_retiro

	validates :insc_fechaini, :insc_fechafin, :insc_estado, :insc_tipo, :insc_estadopago, :insc_estadodoc, presence:true


end