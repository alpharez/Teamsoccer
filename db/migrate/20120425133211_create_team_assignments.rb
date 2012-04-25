class CreateTeamAssignments < ActiveRecord::Migration
  def change
    create_table :team_assignments do |t|
      t.references :user
      t.references :team

      t.timestamps
    end
  end
end
