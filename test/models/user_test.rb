require 'test_helper'

class UserTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end
  '''include Devise::TestHelpers
  fixtures :users

  def setup
     sign_in users(:user1)
  end
'''
  '''test "should get comment" do
    get :comment
    assert_response :success
  end
  '''
end
