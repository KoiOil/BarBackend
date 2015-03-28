class CreateBars < ActiveRecord::Migration
  def change
    create_table :bars do |t|
      t.string :Name
      t.float :Lat
      t.float :Lon

      t.timestamps
    end
  end
end
