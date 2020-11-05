class Project < ApplicationRecord
  has_and_belongs_to_many :users
  has_many :issues, through: :users
end
