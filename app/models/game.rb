class Game < ActiveRecord::Base
  belongs_to :hometeam, :class_name => "Team", :foreign_key => "hometeam_id"
  belongs_to :awayteam, :class_name => "Team", :foreign_key => "awayteam_id"
  # belongs_to :field
  default_scope :order => 'games.gametime'

  def winner
    if homescore.to_i > awayscore.to_i
      hometeam
    elsif homescore.to_i < awayscore.to_i
      awayteam
    end
  end

  def loser
    if homescore.to_i < awayscore.to_i
      hometeam
    elsif homescore.to_i > awayscore.to_i
      awayteam
    end
  end

  def hometie
    if homescore?
      if homescore.to_i == awayscore.to_i
        hometeam
      end
    end
  end

  def awaytie
    if awayscore?
      if awayscore.to_i == homescore.to_i
        awayteam
      end
    end
  end

end
