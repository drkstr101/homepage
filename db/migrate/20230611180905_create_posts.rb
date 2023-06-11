# frozen_string_literal: true

class CreatePosts < ActiveRecord::Migration[7.0]
  def change
    create_table :posts do |t|
      t.string :title
      t.text :content
      t.belongs_to :user, null: false, foreign_key: true, index: true
      t.belongs_to :category, null: false, foreign_key: true, index: true

      t.timestamps
    end
  end
end
