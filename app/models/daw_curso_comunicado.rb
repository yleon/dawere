class DawCursoComunicado < ActiveRecord::Base
  belongs_to :daw_comunicado
  belongs_to :daw_curso
  
  validates :daw_comunicado, presence: true
  validates :curcom_fechaenviado, presence: true
end
