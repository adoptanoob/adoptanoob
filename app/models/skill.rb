class Skill < ActiveRecord::Base
  belongs_to :skilled, polymorphic: true

end
