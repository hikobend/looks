# frozen_string_literal: true

class Answer < ApplicationRecord
  validates :answer, presence: true, length: { in: 1..60, allow_blank: true }
end
