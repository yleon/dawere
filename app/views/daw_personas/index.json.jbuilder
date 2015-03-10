json.array!(@daw_personas) do |daw_persona|
  json.extract! daw_persona, :id, :pers_cedula, :pers_primernom, :pers_segundonom, :pers_primerape, :pers_segundoape, :pers_estadocivil, :pers_fechanac, :pers_sexo, :pers_foto, :pers_email, :pers_tlf1, :pers_tlf2, :pers_tipopers, :daw_lugar_id, :daw_usuario_id
  json.url daw_persona_url(daw_persona, format: :json)
end
