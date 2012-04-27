class CreateReferees < ActiveRecord::Migration
  def change
    create_table :referees do |t|
      t.string :name
      t.string :email
      t.string :city

      t.timestamps
    end
  end
end
