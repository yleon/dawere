json.array!(@daw_staffs) do |daw_staff|
  json.extract! daw_staff, :id, :staff_fechaingr, :staff_fechasalida, :staff_estado
  json.url daw_staff_url(daw_staff, format: :json)
end
