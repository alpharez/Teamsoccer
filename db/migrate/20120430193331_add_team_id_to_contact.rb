class AddTeamIdToContact < ActiveRecord::Migration
  def change
    add_column :contacts, :team_id, :integer

  end
end
