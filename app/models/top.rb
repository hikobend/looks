# frozen_string_literal: true

class Top < ApplicationRecord
  validates :name, presence: true, length: { in: 1..60, allow_blank: true }
  validates :ques_one, inclusion: { in: [true, false] }
  validates :ques_two, inclusion: { in: [true, false] }
  validates :ques_three, inclusion: { in: [true, false] }
  validates :ques_four, inclusion: { in: [true, false] }
  validates :ques_five, inclusion: { in: [true, false] }
end
