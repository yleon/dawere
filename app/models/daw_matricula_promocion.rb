class DawMatriculaPromocion < ActiveRecord::Base
  belongs_to :daw_promocion
  validates :daw_promocion, presence: true
end
