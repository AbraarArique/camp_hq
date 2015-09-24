class User < ActiveRecord::Base
  has_many :tasks, through: :relationshipss
  validates :name, :email,
  presence: true
end
