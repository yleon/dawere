class DawHistCambio < ActiveRecord::Base
    validates :hcam_fecha, :hcam_descripcion, :hcam_campo, :hcam_login, presence: true
	validates :hcam_cam_descripcion, length: { minimum: 2, maximum: 500 }
	validates :hcam_login, length: { minimum: 3, maximum: 20 }
end
