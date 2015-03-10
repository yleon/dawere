json.array!(@daw_contratos) do |daw_contrato|
  json.extract! daw_contrato, :id, :cont_tiempo, :cont_fechaini, :cont_fechafin, :cont_archivo, :cont_descripcion, :daw_persona_id
  json.url daw_contrato_url(daw_contrato, format: :json)
end
