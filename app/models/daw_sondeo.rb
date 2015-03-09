class DawSondeo < ActiveRecord::Base
	has_many :daw_curso_sondeo
	has_many :daw_preguntae
	validates :son_nombre, :son_descripcion, :son_tipoencuesta, presence: true
	validates :son_nombre, length: { minimum: 2 maximum: 100}
	validates :son_descripcion, length: { minimum: 2 maximum: 500 }
end
