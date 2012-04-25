class TeamAssignment < ActiveRecord::Base
  belongs_to :team
  belongs_to :user
end
