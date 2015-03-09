class DawCursoPromo < ActiveRecord::Base
  belongs_to :daw_promo
  validates :daw_promo, presence: true
end
