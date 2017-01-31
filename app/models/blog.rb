class Blog < ApplicationRecord
  validates_presence_of :title, :body
  enum status: { Draft: 0, published: 1}
  extend FriendlyId
  friendly_id :title, use: :slugged
end
