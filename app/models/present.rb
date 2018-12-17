class Present < ApplicationRecord
  has_and_belongs_to_many :people
  has_and_belongs_to_many :categories

  has_many :comments, dependent: :destroy
  validates :title, presence: true,
            lenght: { minimum: 3 }
end
