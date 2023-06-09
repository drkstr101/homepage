# frozen_string_literal: true

# Comment model belongs to page
class Comment < ApplicationRecord
  belongs_to :article

  VALID_STATES = %w[public private archived].freeze

  validates :status, inclusion: { in: VALID_STATUSES }

  def archived?
    status == 'archived'
  end
end
