class DawHistoricoCambio < ActiveRecord::Base
	validates :his_cam_fecha, :his_cam_descripcion, :his_cam_campo, :his_cam_login, presence: true
	validates :his_cam_descripcion, length: { minimum: 2 maximum: 500 }
	validates :his_cam_login, length: { minimum: 3 maximum: 20 }
end
