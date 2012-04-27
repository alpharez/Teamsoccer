class Player < ActiveRecord::Base
  belongs_to :team

  default_scope :order => 'players.number'
end
