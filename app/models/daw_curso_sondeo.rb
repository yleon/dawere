class DawCursoSondeo < ActiveRecord::Base
  belongs_to :daw_sondeo
  validates :daw_sondeo, presence: true
  validates :cur_son_periodo, presence: true
end
