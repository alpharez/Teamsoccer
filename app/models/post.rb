class Post < ActiveRecord::Base
  belongs_to :user
end
# == Schema Information
#
# Table name: posts
#
#  id         :integer         not null, primary key
#  title      :string(255)
#  body       :text
#  user_id    :integer
#  created_at :datetime        not null
#  updated_at :datetime        not null
#

