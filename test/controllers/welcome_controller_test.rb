require 'test_helper'

class WelcomeControllerTest < ActionController::TestCase

  test 'should redirect to login page if no user is logged in' do
    get :index
    assert_response :redirect
  end

  test 'should get index for logged in user' do
    #@user = User.find_by_email 'user1@example.com'
    @user = users(:two)
    sign_in @user
    get :index
    assert_response :success
    assert_template :index
  end

end
