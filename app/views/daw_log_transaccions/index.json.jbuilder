json.array!(@daw_log_transaccions) do |daw_log_transaccion|
  json.extract! daw_log_transaccion, :id, :logt_sesion, :logt_descripcion, :logt_fecha, :logt_estado, :logt_transaccion, :logt_argumento1, :logt_argumento2
  json.url daw_log_transaccion_url(daw_log_transaccion, format: :json)
end
