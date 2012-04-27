class AddScoresToGames < ActiveRecord::Migration
  def change
    add_column :games, :homescore, :integer

    add_column :games, :awayscore, :integer

  end
end
