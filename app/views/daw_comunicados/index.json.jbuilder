json.array!(@daw_comunicados) do |daw_comunicado|
  json.extract! daw_comunicado, :id, :com_nombre, :com_texto, :com_tipocomunicado, :com_estado, :com_fechaenvio
  json.url daw_comunicado_url(daw_comunicado, format: :json)
end
