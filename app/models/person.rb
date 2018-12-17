class Person < ApplicationRecord
  has_and_belongs_to_many :presents
  validates :title, presence: true,
            length: { minimum: 1 }
end
