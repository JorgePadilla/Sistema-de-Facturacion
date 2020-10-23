json.extract! producto, :id, :nombre, :fecha_de_ingreso, :descripcion, :costo, :cantidad_existente, :categoria, :estado, :codigo_de_barra, :proveedor, :created_at, :updated_at
json.url producto_url(producto, format: :json)
