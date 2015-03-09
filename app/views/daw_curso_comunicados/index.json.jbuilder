json.array!(@daw_curso_comunicados) do |daw_curso_comunicado|
  json.extract! daw_curso_comunicado, :id, :curcom_fechaenviado, :daw_comunicado_id
  json.url daw_curso_comunicado_url(daw_curso_comunicado, format: :json)
end
