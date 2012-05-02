class AddLogoToTeams < ActiveRecord::Migration
  def change

    add_column :teams, :logourl, :string

  end
end
