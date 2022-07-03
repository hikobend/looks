# frozen_string_literal: true

class Answer < ApplicationRecord
  validates :answer, presence: true
end
