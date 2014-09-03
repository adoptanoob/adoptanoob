class Role < ActiveRecord::Base
  belongs_to :user
  belongs_to :project
  has_many :skills, as: :skilled

end
