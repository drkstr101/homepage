# frozen_string_literal: true

require 'test_helper'

class UserTest < ActiveSupport::TestCase
  test 'MAY save user model with valid attributes' do
    user = User.new
    assert_not user.save

    user = User.new(name: 'admin')
    assert_not user.save

    user = User.new(email: 'admin@watheia.com')
    assert_not user.save

    user = User.new(name: 'admin', email: 'admin@watheia.com')
    assert_not user.save

    user = User.new(name: 'admin', email: 'admin@watheia.com', password: 'password')
    assert user.name == 'admin'
    assert user.email == 'admin@watheia.com'
    assert user.save
  end
end
