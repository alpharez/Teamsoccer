class AddLeagueToTeam < ActiveRecord::Migration
  def change
    add_column :teams, :league, :string

  end
end
