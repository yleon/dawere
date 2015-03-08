class DawCursoComunicado < ActiveRecord::Base
  belongs_to :daw_comunicado
  validates :daw_comunicado, presence: true
  validates :cur_com_fechaenviado, presence: true
end
