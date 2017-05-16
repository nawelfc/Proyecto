class Comment < ApplicationRecord
  belongs_to :article
  validates :text, presence: true,
                    length: { minimum: 5 }
end
