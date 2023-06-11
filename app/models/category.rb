# frozen_string_literal: true

# Category - top level classification for posts
class Category < ApplicationRecord
  belongs_to :posts
end
