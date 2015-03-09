json.array!(@daw_codigos) do |daw_codigo|
  json.extract! daw_codigo, :id, :cod_valor, :cod_estado, :daw_promo_id
  json.url daw_codigo_url(daw_codigo, format: :json)
end
