class Blog < ApplicationRecord
  enum status: { draft: 0, published:1 }
  extend friendly_id
  friendly_id :title, use: :slugged

  validates_presence_of :title, :body

  belongs_to :topic
end
