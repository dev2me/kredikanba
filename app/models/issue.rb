class Issue < ApplicationRecord
  attr_accessor :project
  belongs_to :user
  belongs_to :category
  has_many :comments
  has_and_belongs_to_many :tags

  enum status: [:pending, :todo, :done, :finished]
end
