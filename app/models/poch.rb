class Poch < ApplicationRecord
  belongs_to :project
  has_many :pochers, dependent: :destroy
end
