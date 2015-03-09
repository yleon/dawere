class DawLogError < ActiveRecord::Base
	validates :loge_sesion, :loge_descripcion, :loge_fecha, presence: true
	validates :loge_descripcion, length: { minimum: 2 maximum: 1000 }
	validates :loge_error, length: { minimum: 2 maximum: 1000}
	validates :loge_errorbd, length: { minimum: 2 maximum: 1000 }
	validates :loge_argumento1, length: { minimum: 2 maximum: 1000 }
	validates :loge_argumento2, length: { minimunm: 2 maximum: 1000 }
end
