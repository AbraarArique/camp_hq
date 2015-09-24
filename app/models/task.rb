class Task < ActiveRecord::Base
  has_many :relationships
  has_many :users, through: :relationships
  validates :name,
      presence: true
  validates :completed,
      inclusion: [true, false]
end
