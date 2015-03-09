class DawCursoEncuest < ActiveRecord::Base
  belongs_to :daw_encuest
  validates :daw_encuest, presence: true
  validates :curenc_periodo, presence: true
end
