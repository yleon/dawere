json.array!(@daw_historico_cambios) do |daw_historico_cambio|
  json.extract! daw_historico_cambio, :id, :his_cam_idtabla, :his_cam_idregistro, :his_cam_fecha, :his_cam_descripcion, :his_cam_campo, :his_cam_estado, :his_cam_login
  json.url daw_historico_cambio_url(daw_historico_cambio, format: :json)
end
