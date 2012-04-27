class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.datetime :gametime
      t.integer :hometeam_id
      t.integer :awayteam_id
      t.text :notes
      t.integer :field_id
      t.string :fieldname

      t.timestamps
    end
  end
end
