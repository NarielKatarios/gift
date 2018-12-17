class Category < ApplicationRecord
  has_and_belongs_to_many :presents
  validates :title, presence: true
end
