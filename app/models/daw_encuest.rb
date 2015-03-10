class DawEncuest < ActiveRecord::Base
has_many :daw_curso_encuest
	has_many :daw_preguntae
	validates :enc_nombre, :enc_descripcion, :enc_tipoencuest, presence: true
	validates :enc_nombre, length: { minimum: 2, maximum: 100}
	validates :enc_descripcion, length: { minimum: 2, maximum: 500 }
end
