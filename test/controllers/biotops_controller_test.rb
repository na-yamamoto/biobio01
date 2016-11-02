require 'test_helper'

class BiotopsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @biotop = biotops(:one)
  end

  test "should get index" do
    get biotops_url
    assert_response :success
  end

  test "should get new" do
    get new_biotop_url
    assert_response :success
  end

  test "should create biotop" do
    assert_difference('Biotop.count') do
      post biotops_url, params: { biotop: { description: @biotop.description, event_id: @biotop.event_id, tag_id: @biotop.tag_id } }
    end

    assert_redirected_to biotop_url(Biotop.last)
  end

  test "should show biotop" do
    get biotop_url(@biotop)
    assert_response :success
  end

  test "should get edit" do
    get edit_biotop_url(@biotop)
    assert_response :success
  end

  test "should update biotop" do
    patch biotop_url(@biotop), params: { biotop: { description: @biotop.description, event_id: @biotop.event_id, tag_id: @biotop.tag_id } }
    assert_redirected_to biotop_url(@biotop)
  end

  test "should destroy biotop" do
    assert_difference('Biotop.count', -1) do
      delete biotop_url(@biotop)
    end

    assert_redirected_to biotops_url
  end
end
