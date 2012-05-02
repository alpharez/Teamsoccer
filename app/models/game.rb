class Game < ActiveRecord::Base
  belongs_to :hometeam, :class_name => "Team", :foreign_key => "hometeam_id"
  belongs_to :awayteam, :class_name => "Team", :foreign_key => "awayteam_id"
  belongs_to :field
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
# == Schema Information
#
# Table name: games
#
#  id          :integer         not null, primary key
#  gametime    :datetime
#  hometeam_id :integer
#  awayteam_id :integer
#  notes       :text
#  field_id    :integer
#  fieldname   :string(255)
#  created_at  :datetime        not null
#  updated_at  :datetime        not null
#  homescore   :integer
#  awayscore   :integer
#

