# frozen_string_literal: true

class Top < ApplicationRecord
  validates :name, presence: true, length: { in: 1..60, allow_blank: true }
  validates :ques_one, presence: true
end
