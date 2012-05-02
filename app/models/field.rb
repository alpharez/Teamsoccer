class Field < ActiveRecord::Base
  has_many :games
  default_scope :order => 'fields.city'
end
