class DawCodigo < ActiveRecord::Base
  belongs_to :daw_promocion
  validates :daw_promocion, presence: true
  validates :cod_valor, :cod_estado, presence: true
  validates :cod_valor, uniqueness: true
end
