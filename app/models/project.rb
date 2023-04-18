class Project < ApplicationRecord
  belongs_to :user
  has_many :poches, dependent: :destroy
  has_many :atamen, dependent: :destroy
  has_many :vazis, dependent: :destroy
end
