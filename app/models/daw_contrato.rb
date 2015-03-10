class DawContrato < ActiveRecord::Base
  belongs_to :daw_prof_asist
  belongs_to :daw_curso
end
