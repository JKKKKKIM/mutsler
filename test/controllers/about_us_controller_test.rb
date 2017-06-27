require 'test_helper'

class AboutUsControllerTest < ActionController::TestCase
  test "should get banner2" do
    get :banner2
    assert_response :success
  end

  test "should get banner3" do
    get :banner3
    assert_response :success
  end

  test "should get blog" do
    get :blog
    assert_response :success
  end

  test "should get blog_details" do
    get :blog_details
    assert_response :success
  end

  test "should get blog_details_lhs" do
    get :blog_details_lhs
    assert_response :success
  end

  test "should get blog_details_rhs" do
    get :blog_details_rhs
    assert_response :success
  end

  test "should get contact" do
    get :contact
    assert_response :success
  end

  test "should get contact2" do
    get :contact2
    assert_response :success
  end

  test "should get e404" do
    get :e404
    assert_response :success
  end

  test "should get header2" do
    get :header2
    assert_response :success
  end

  test "should get header3" do
    get :header3
    assert_response :success
  end

  test "should get header4" do
    get :header4
    assert_response :success
  end

  test "should get header5" do
    get :header5
    assert_response :success
  end

  test "should get index" do
    get :index
    assert_response :success
  end

  test "should get index_v2" do
    get :index_v2
    assert_response :success
  end

  test "should get index_v3" do
    get :index_v3
    assert_response :success
  end

  test "should get index_v4" do
    get :index_v4
    assert_response :success
  end

  test "should get index_v5" do
    get :index_v5
    assert_response :success
  end

  test "should get portfolio" do
    get :portfolio
    assert_response :success
  end

  test "should get portfolio_details" do
    get :portfolio_details
    assert_response :success
  end

  test "should get portfolio_details_lhs" do
    get :portfolio_details_lhs
    assert_response :success
  end

  test "should get portfolio_details_rhs" do
    get :portfolio_details_rhs
    assert_response :success
  end

  test "should get services" do
    get :services
    assert_response :success
  end

  test "should get shop" do
    get :shop
    assert_response :success
  end

  test "should get shop_cart" do
    get :shop_cart
    assert_response :success
  end

  test "should get shop_checkout" do
    get :shop_checkout
    assert_response :success
  end

  test "should get shortcodes" do
    get :shortcodes
    assert_response :success
  end

end
