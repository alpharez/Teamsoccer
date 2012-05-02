class CreateFields < ActiveRecord::Migration
  def change
    create_table :fields do |t|
      t.string :name
      t.string :address
      t.string :city
      t.string :state
      t.text :googlemap

      t.timestamps
    end
  end
end
