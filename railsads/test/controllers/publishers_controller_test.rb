require 'test_helper'

class PublishersControllerTest < ActionController::TestCase
  setup do
    @publisher = publishers(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:publishers)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create publisher" do
    assert_difference('Publisher.count') do
      post :create, publisher: { contact: @publisher.contact, email: @publisher.email, publisher_name: @publisher.publisher_name, publisher_type: @publisher.publisher_type, website: @publisher.website }
    end

    assert_redirected_to publisher_path(assigns(:publisher))
  end

  test "should show publisher" do
    get :show, id: @publisher
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @publisher
    assert_response :success
  end

  test "should update publisher" do
    patch :update, id: @publisher, publisher: { contact: @publisher.contact, email: @publisher.email, publisher_name: @publisher.publisher_name, publisher_type: @publisher.publisher_type, website: @publisher.website }
    assert_redirected_to publisher_path(assigns(:publisher))
  end

  test "should destroy publisher" do
    assert_difference('Publisher.count', -1) do
      delete :destroy, id: @publisher
    end

    assert_redirected_to publishers_path
  end
end
