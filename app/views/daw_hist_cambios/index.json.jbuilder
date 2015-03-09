json.array!(@daw_hist_cambios) do |daw_hist_cambio|
  json.extract! daw_hist_cambio, :id, :hcam_idtabla, :hcam_idregistro, :hcam_fecha, :hcam_descripcion, :hcam_campo, :hcam_estado, :hcam_login
  json.url daw_hist_cambio_url(daw_hist_cambio, format: :json)
end
