class Task < ActiveRecord::Base
  has_many :relationships
  has_many :users, through: :relationships
  validates :name, :completed,
  presence: true
end
