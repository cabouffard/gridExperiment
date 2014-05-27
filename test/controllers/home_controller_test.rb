require 'test_helper'

class HomeControllerTest < ActionController::TestCase
  it "should get index" do
    @user = create(:user)
    sign_in @user
    get :index
    assert_response :success
  end
end
