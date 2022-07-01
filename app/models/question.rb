class Question < ApplicationRecord
  belongs_to :top, optional: true
end
