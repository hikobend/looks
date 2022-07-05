# frozen_string_literal: true

class Top < ApplicationRecord
  validates :name, length: { in: 1..60, allow_blank: true }
  validate :name_presence
  validates :ques_one, inclusion: { in: [true, false], message: 'つ目の質問に回答してください' }
  validates :ques_two, inclusion: { in: [true, false], message: 'つ目の質問に回答してください' }
  validates :ques_three, inclusion: { in: [true, false], message: 'つ目の質問に回答してください' }
  validates :ques_four, inclusion: { in: [true, false], message: 'つ目の質問に回答してください' }
  validates :ques_five, inclusion: { in: [true, false], message: 'つ目の質問に回答してください' }

  private

    def name_presence
      return if name.present?

      errors.add(:base, '名前を入力してください.')
    end
end
