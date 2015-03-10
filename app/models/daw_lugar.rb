class DawLugar < ActiveRecord::Base
	belongs_to :daw_lugar  
	has_many :daw_lugars	  
	has_many :daw_personas

	validates :lugar_nombre, :lugar_tipo, :lugar_nivel, presence: true
	validates :lugar_nombre, uniqueness: true, length: { minimum: 2, maximum: 20 }
end
