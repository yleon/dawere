class DawEvaluacion < ActiveRecord::Base
	belongs_to :daw_actividad, :daw_curso_tema

	validates :eval_ponderacion, :eval_periodo, :eval_orden, :eval_tipoEval, presence: true
end
