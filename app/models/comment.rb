class Comment < ApplicationRecord
  validates :author, presence: true
  validates :body, presence: true
  validates :body, length: { minimum: 10 }

  belongs_to :article
end
