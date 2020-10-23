class CreateProductos < ActiveRecord::Migration[6.0]
  def change
    create_table :productos do |t|
      t.string :nombre
      t.date :fecha_de_ingreso
      t.string :descripcion
      t.decimal :costo
      t.string :cantidad_existente
      t.string :categoria
      t.boolean :estado
      t.string :codigo_de_barra
      t.string :proveedor

      t.timestamps
    end
  end
end
