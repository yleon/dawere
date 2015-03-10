class DawPreguntae < ActiveRecord::Base
  belongs_to :daw_encuest
  has_many :daw_respuestae
  validates :daw_encuest, presence: true
  validates :pre_encabezado, :pre_orden, presence: true
  validates :pre_encabezado, length: { minimum: 3, maximum: 500 }

end
