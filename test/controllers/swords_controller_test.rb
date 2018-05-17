require 'test_helper'

class SwordsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @sword = swords(:one)
  end

  test "should get index" do
    get swords_url
    assert_response :success
  end

  test "should get new" do
    get new_sword_url
    assert_response :success
  end

  test "should create sword" do
    assert_difference('Sword.count') do
      post swords_url, params: { sword: { broken: @sword.broken, length: @sword.length, material: @sword.material, user_id: @sword.user_id, victim_id: @sword.victim_id } }
    end

    assert_redirected_to sword_url(Sword.last)
  end

  test "should show sword" do
    get sword_url(@sword)
    assert_response :success
  end

  test "should get edit" do
    get edit_sword_url(@sword)
    assert_response :success
  end

  test "should update sword" do
    patch sword_url(@sword), params: { sword: { broken: @sword.broken, length: @sword.length, material: @sword.material, user_id: @sword.user_id, victim_id: @sword.victim_id } }
    assert_redirected_to sword_url(@sword)
  end

  test "should destroy sword" do
    assert_difference('Sword.count', -1) do
      delete sword_url(@sword)
    end

    assert_redirected_to swords_url
  end
end
