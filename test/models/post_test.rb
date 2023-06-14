# frozen_string_literal: true

require 'test_helper'

class PostTest < ActiveSupport::TestCase
  test 'MAY save post model with valid attributes' do
    user = User.create(name: 'admin', email: 'admin@watheia.com', password: 'password')

    post = Post.new
    assert_not post.save

    post = Post.new(user:)
    assert_not post.save

    post = Post.new(content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
    assert_not post.save

    post = Post.new(user:, content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
    assert post.save

    post = Post.new(user:, title: 'Hello, World!', content: 'Lorem ipsum dolor sit amet, consectetur adipiscing elit.')
    assert post.save
  end
end
