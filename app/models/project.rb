class Project < ActiveRecord::Base
  has_many :users, through: :roles
  has_many :roles 
  
  validates :name, presence: true,
                   uniqueness: true
end
