class CreateSpecials < ActiveRecord::Migration
  def change
    create_table :specials do |t|
      t.integer :barid
      t.text :description

      t.timestamps
    end
  end
end
