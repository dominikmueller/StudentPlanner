require 'test_helper'

class UserTest < ActiveSupport::TestCase

  def setup
    @user = User.new(firstname: "Example", lastname: "User", mail: "example@mail.org", password: "123456")
  end

  test "should be valid" do
    assert @user.valid?
  end

  test "name should be present" do
    @user.firstname = "      "
    assert_not @user.valid?
  end
   #test "the truth" do
   #  assert true
   #end
end
