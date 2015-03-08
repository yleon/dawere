json.array!(@daw_curso_sondeos) do |daw_curso_sondeo|
  json.extract! daw_curso_sondeo, :id, :cur_son_periodo, :daw_sondeo_id
  json.url daw_curso_sondeo_url(daw_curso_sondeo, format: :json)
end
