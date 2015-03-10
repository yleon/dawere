class DawMatriculaPromo < ActiveRecord::Base
  belongs_to :daw_promo
  belongs_to :daw_matricula
  
  validates :daw_promo, presence: true
end
