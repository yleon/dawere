class DawPeriodoAcad < ActiveRecord::Base
	has_many :daw_curso

	validates :pac_nombre, :pac_fechaini, :pac_fechafin, :pac_estado, presence: true
	validates :pac_nombre,  uniqueness: true
	validates :pac_descripcion, length: { minimum: 2 maximum: 1500 }
end
