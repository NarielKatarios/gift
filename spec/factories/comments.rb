FactoryBot.define do
  factory :comment do
    commenter { "MyString" }
    body { "MyText" }
    present { nil }
  end
end
