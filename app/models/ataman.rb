class Ataman < ApplicationRecord
  belongs_to :project
  has_one_attached :atr
end
