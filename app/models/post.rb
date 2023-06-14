# frozen_string_literal: true

# Post - contains a brief message with a title, belongs to a User and Category
class Post < ApplicationRecord
  belongs_to :user
end
