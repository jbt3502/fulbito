json.extract! persona, :id, :nombre, :apellido_paterno, :apellido_materno, :sexo, :dni, :correo, :fecha_nacimiento, :celular, :direccion, :created_at, :updated_at
json.url persona_url(persona, format: :json)
