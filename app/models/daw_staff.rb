class DawStaff < DawPersona
	validates :staff_fechaingr, :staff_fechasalida, :staff_estado, presence: true
end