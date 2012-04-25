class Team < ActiveRecord::Base

  has_many :team_assignments
  has_many :users, :through => :team_assignments

end
