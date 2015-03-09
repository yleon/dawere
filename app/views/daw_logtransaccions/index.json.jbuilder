json.array!(@daw_logtransaccions) do |daw_logtransaccion|
  json.extract! daw_logtransaccion, :id, :logt_sesion, :logt_descripcion, :logt_fecha, :logt_estado, :logt_transaccion, :logt_argumento1, :logt_argumento2
  json.url daw_logtransaccion_url(daw_logtransaccion, format: :json)
end
