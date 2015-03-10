class DawPersona < ActiveRecord::Base
	belongs_to :daw_lugar
	belongs_to :daw_usuario
	has_many :daw_reclamos
	has_many :daw_reclamos
	has_many :daw_retiros
	has_many :daw_rol_pers_insc

	validates :pers_cedula, :pers_primernom, :pers_primerape, :pers_fechanac, :pers_email, presence: true
	validates :pers_cedula, uniqueness: true, length: { minimum: 2, maximum: 20 }
	validates :curso_descripcionmeta, :curso_descripcioncurso, :curso_descripcionpasos, length: { minimum: 2, maximum: 1500 }


end
	  t.string :pers_cedula
      t.string :pers_primernom
      t.string :pers_segundonom
      t.string :pers_primerape
      t.string :pers_segundoape
      t.string :pers_estadocivil
      t.date :pers_fechanac
      t.string :pers_sexo
      t.string :pers_foto
      t.string :pers_email
      t.string :pers_tlf1
      t.string :pers_tlf2
      t.integer :pers_tipopers
