class Player < ActiveRecord::Base
  belongs_to :team

  default_scope :order => 'players.number'
end
# == Schema Information
#
# Table name: players
#
#  id         :integer         not null, primary key
#  name       :string(255)
#  number     :string(255)
#  position   :string(255)
#  team_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

