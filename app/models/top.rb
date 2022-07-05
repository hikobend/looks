# frozen_string_literal: true

class Top < ApplicationRecord
  validates :name, length: { in: 1..60, allow_blank: true }
  validate :name_presence
  validate :ques_one_inclusion
  validate :ques_two_inclusion
  validate :ques_three_inclusion
  validate :ques_four_inclusion
  validate :ques_five_inclusion

  private

    def name_presence
      return if name.present?

      errors.add(:base, '名前を入力してください.')
    end

    def ques_one_inclusion
      return if ques_one.present?

      errors.add(:base, '1つ目の質問に回答してください')
    end

    def ques_two_inclusion
      return if ques_one.present?

      errors.add(:base, '2つ目の質問に回答してください')
    end

    def ques_three_inclusion
      return if ques_one.present?

      errors.add(:base, '3つ目の質問に回答してください')
    end

    def ques_four_inclusion
      return if ques_one.present?

      errors.add(:base, '4つ目の質問に回答してください')
    end

    def ques_five_inclusion
      return if ques_one.present?

      errors.add(:base, '5つ目の質問に回答してください')
    end
end
