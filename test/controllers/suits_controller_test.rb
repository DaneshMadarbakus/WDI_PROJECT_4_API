require 'test_helper'

class SuitsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @suit = suits(:one)
  end

  test "should get index" do
    get suits_url, as: :json
    assert_response :success
  end

  test "should create suit" do
    assert_difference('Suit.count') do
      post suits_url, params: { suit: { brand: @suit.brand, colour: @suit.colour, daily_price: @suit.daily_price, deposit: @suit.deposit, fit: @suit.fit, image: @suit.image, jacket_chest: @suit.jacket_chest, jacket_length: @suit.jacket_length, jacket_shoulder_length: @suit.jacket_shoulder_length, jacket_sleeve: @suit.jacket_sleeve, jacket_waist: @suit.jacket_waist, notes: @suit.notes, title: @suit.title, trouser_front_rise: @suit.trouser_front_rise, trouser_length: @suit.trouser_length, trouser_waist: @suit.trouser_waist, user_id: @suit.user_id } }, as: :json
    end

    assert_response 201
  end

  test "should show suit" do
    get suit_url(@suit), as: :json
    assert_response :success
  end

  test "should update suit" do
    patch suit_url(@suit), params: { suit: { brand: @suit.brand, colour: @suit.colour, daily_price: @suit.daily_price, deposit: @suit.deposit, fit: @suit.fit, image: @suit.image, jacket_chest: @suit.jacket_chest, jacket_length: @suit.jacket_length, jacket_shoulder_length: @suit.jacket_shoulder_length, jacket_sleeve: @suit.jacket_sleeve, jacket_waist: @suit.jacket_waist, notes: @suit.notes, title: @suit.title, trouser_front_rise: @suit.trouser_front_rise, trouser_length: @suit.trouser_length, trouser_waist: @suit.trouser_waist, user_id: @suit.user_id } }, as: :json
    assert_response 200
  end

  test "should destroy suit" do
    assert_difference('Suit.count', -1) do
      delete suit_url(@suit), as: :json
    end

    assert_response 204
  end
end
