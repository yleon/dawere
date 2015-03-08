json.array!(@daw_logerrors) do |daw_logerror|
  json.extract! daw_logerror, :id, :loge_sesion, :loge_descripcion, :loge_fecha, :loge_estado, :loge_error, :loge_errorbd, :loge_argumento1, :loge_argumento2
  json.url daw_logerror_url(daw_logerror, format: :json)
end
