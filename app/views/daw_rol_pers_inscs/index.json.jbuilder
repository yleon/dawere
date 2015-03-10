json.array!(@daw_rol_pers_inscs) do |daw_rol_pers_insc|
  json.extract! daw_rol_pers_insc, :id, :rpi_tiporol, :daw_persona_id
  json.url daw_rol_pers_insc_url(daw_rol_pers_insc, format: :json)
end
