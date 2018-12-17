class Comment < ApplicationRecord
  belongs_to :present
  validates :body, presence: true
end
