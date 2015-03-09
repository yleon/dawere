class DawPreguntae < ActiveRecord::Base
  belongs_to :daw_sondeo
  has_many :daw_respuestae
  validates :daw_sondeo, presence: true
  validates :pre_encabezado, :pre_orden, presence: true
  validates :pre_encabezado, length: { minimum: 3 maximum: 500 }
end
