# frozen_string_literal: true

# Comment model belongs to page
class Comment < ApplicationRecord
  belongs_to :article
end
