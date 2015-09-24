class User < ActiveRecord::Base
  has_many :relationships
  has_many :tasks, through: :relationships
  validates :name, :email,
  presence: true
end
