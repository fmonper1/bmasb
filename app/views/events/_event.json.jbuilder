json.extract! event, :id, :titulo, :descripcion, :fecha_contacto, :nombre_contacto, :numero_contacto, :created_at, :updated_at
json.url event_url(event, format: :json)
