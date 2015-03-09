json.array!(@daw_log_errors) do |daw_log_error|
  json.extract! daw_log_error, :id, :loge_sesion, :loge_descripcion, :loge_fecha, :loge_estado, :loge_error, :loge_errorbd, :loge_argumento1, :loge_argumento2
  json.url daw_log_error_url(daw_log_error, format: :json)
end
