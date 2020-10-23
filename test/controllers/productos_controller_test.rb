require 'test_helper'

class ProductosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @producto = productos(:one)
  end

  test "should get index" do
    get productos_url
    assert_response :success
  end

  test "should get new" do
    get new_producto_url
    assert_response :success
  end

  test "should create producto" do
    assert_difference('Producto.count') do
      post productos_url, params: { producto: { cantidad_existente: @producto.cantidad_existente, categoria: @producto.categoria, codigo_de_barra: @producto.codigo_de_barra, costo: @producto.costo, descripcion: @producto.descripcion, estado: @producto.estado, fecha_de_ingreso: @producto.fecha_de_ingreso, nombre: @producto.nombre, proveedor: @producto.proveedor } }
    end

    assert_redirected_to producto_url(Producto.last)
  end

  test "should show producto" do
    get producto_url(@producto)
    assert_response :success
  end

  test "should get edit" do
    get edit_producto_url(@producto)
    assert_response :success
  end

  test "should update producto" do
    patch producto_url(@producto), params: { producto: { cantidad_existente: @producto.cantidad_existente, categoria: @producto.categoria, codigo_de_barra: @producto.codigo_de_barra, costo: @producto.costo, descripcion: @producto.descripcion, estado: @producto.estado, fecha_de_ingreso: @producto.fecha_de_ingreso, nombre: @producto.nombre, proveedor: @producto.proveedor } }
    assert_redirected_to producto_url(@producto)
  end

  test "should destroy producto" do
    assert_difference('Producto.count', -1) do
      delete producto_url(@producto)
    end

    assert_redirected_to productos_url
  end
end
