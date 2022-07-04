# frozen_string_literal: true

FactoryBot.define do
  factory :top do
    name { Gimei.name.last.kanji + Gimei.name.first.kanji }
    ques_one { true }
    ques_two { true }
    ques_three { true }
    ques_four { true }
    ques_five { true }
  end
end
