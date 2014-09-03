class Project < ActiveRecord::Base
  has_many :users, through: :roles
  has_many :roles 
  has_many :skills, as: :skilled

  
  validates :name, presence: true,
                   uniqueness: true
end
