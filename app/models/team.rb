class Team < ActiveRecord::Base

  has_many :team_assignments
  has_many :users, :through => :team_assignments
  has_many :homegames, :class_name => "Game", :foreign_key => "hometeam_id"
  has_many :awaygames, :class_name => "Game", :foreign_key => "awayteam_id"
  has_many :games
  has_many :contacts
  has_many :players

  default_scope :order => 'teams.name'

  def wins
    homegames.select { |hg| hg.winner == self}.size + awaygames.select { |ag| ag.winner == self}.size
  end

  def losses
    homegames.select { |hg| hg.loser == self}.size + awaygames.select { |ag| ag.loser == self}.size
  end

  def ties
    homegames.select { |hg| hg.hometie == self}.size + awaygames.select { |ag| ag.awaytie == self}.size
  end

end
# == Schema Information
#
# Table name: teams
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

