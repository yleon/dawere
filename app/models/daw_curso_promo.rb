class DawCursoPromo < ActiveRecord::Base
  belongs_to :daw_promo
  belongs_to :daw_curso
  
  validates :daw_promo, presence: true
end
