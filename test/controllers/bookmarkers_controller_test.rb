require 'test_helper'

class BookmarkersControllerTest < ActionDispatch::IntegrationTest
  setup do
    @bookmarker = bookmarkers(:one)
  end

  test "should get index" do
    get bookmarkers_url
    assert_response :success
  end

  test "should get new" do
    get new_bookmarker_url
    assert_response :success
  end

  test "should create bookmarker" do
    assert_difference('Bookmarker.count') do
      post bookmarkers_url, params: { bookmarker: { category_id: @bookmarker.category_id, type_id: @bookmarker.type_id, url: @bookmarker.url } }
    end

    assert_redirected_to bookmarker_url(Bookmarker.last)
  end

  test "should show bookmarker" do
    get bookmarker_url(@bookmarker)
    assert_response :success
  end

  test "should get edit" do
    get edit_bookmarker_url(@bookmarker)
    assert_response :success
  end

  test "should update bookmarker" do
    patch bookmarker_url(@bookmarker), params: { bookmarker: { category_id: @bookmarker.category_id, type_id: @bookmarker.type_id, url: @bookmarker.url } }
    assert_redirected_to bookmarker_url(@bookmarker)
  end

  test "should destroy bookmarker" do
    assert_difference('Bookmarker.count', -1) do
      delete bookmarker_url(@bookmarker)
    end

    assert_redirected_to bookmarkers_url
  end
end
