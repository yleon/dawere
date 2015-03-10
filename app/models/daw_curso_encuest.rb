class DawCursoEncuest < ActiveRecord::Base
  belongs_to :daw_encuest
  belongs_to :daw_curso
  
  validates :daw_encuest, presence: true
  validates :curenc_periodo, presence: true
end
