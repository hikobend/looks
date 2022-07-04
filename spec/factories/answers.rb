# frozen_string_literal: true

FactoryBot.define do
  factory :answer do
    answer { Faker::Internet.password(max_length: 20) }
  end
end
