class Project < ActiveRecord::Base
  has_many :users, through: :roles
  has_many :roles 
  has_many :skills, as: :skilled

  
  validates :name, presence: true,
                   uniqueness: true

  accepts_nested_attributes_for :skills, allow_destroy: true
  accepts_nested_attributes_for :roles, allow_destroy: true

  mount_uploader :image, ImageUploader

end
