require 'test_helper'

class FieldRentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @field_rent = field_rents(:one)
  end

  test "should get index" do
    get field_rents_url
    assert_response :success
  end

  test "should get new" do
    get new_field_rent_url
    assert_response :success
  end

  test "should create field_rent" do
    assert_difference('FieldRent.count') do
      post field_rents_url, params: { field_rent: { descripcion: @field_rent.descripcion, fecha: @field_rent.fecha, field_id: @field_rent.field_id, hora: @field_rent.hora, service_id: @field_rent.service_id } }
    end

    assert_redirected_to field_rent_url(FieldRent.last)
  end

  test "should show field_rent" do
    get field_rent_url(@field_rent)
    assert_response :success
  end

  test "should get edit" do
    get edit_field_rent_url(@field_rent)
    assert_response :success
  end

  test "should update field_rent" do
    patch field_rent_url(@field_rent), params: { field_rent: { descripcion: @field_rent.descripcion, fecha: @field_rent.fecha, field_id: @field_rent.field_id, hora: @field_rent.hora, service_id: @field_rent.service_id } }
    assert_redirected_to field_rent_url(@field_rent)
  end

  test "should destroy field_rent" do
    assert_difference('FieldRent.count', -1) do
      delete field_rent_url(@field_rent)
    end

    assert_redirected_to field_rents_url
  end
end
