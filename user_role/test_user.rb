require 'minitest/autorun'
class User
  def initialize
    @role = []
  end
  def assign_role (role)
    @role.push role
  end
  def in_role?(role)
    @role.index(role)
  end
end

class TestUser < MiniTest::Test
 def test_user_in_assigned_role
  user = User.new
  user.assign_role('admin')
  assert user.in_role?('admin'), 'user is not in admin role'
 end 
 def test_user_not_unassigned_role
   user = User.new
   assert !user.in_role?('admin'), 'user is in admin role'
 end
 def test_user_many_roles
   user = User.new
   user.assign_role('admin')
   user.assign_role('user')
   assert user.in_role?('admin'), 'user have the role admin'
   assert user.in_role?('user'), 'user have the role user'
   assert !user.in_role?('user1'), 'user not have this role'
 end
end
