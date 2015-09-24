class Task < ActiveRecord::Base
  has_many :users, through: :relationships
  validates :name, :completed, :user_id,
  presence: true
end
