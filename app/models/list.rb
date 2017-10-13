class List < ApplicationRecord
  belongs_to :user
  has_many :category
  # has_many :items
end
