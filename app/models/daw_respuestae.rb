class DawRespuestae < ActiveRecord::Base
  belongs_to :daw_preguntae
  belongs_to :daw_persona
  validates :daw_preguntae, presence: true
  validates :res_valor, :res_fecha, presence: true
end
