# frozen_string_literal: true

class Question < ApplicationRecord
  belongs_to :top, optional: true
end
