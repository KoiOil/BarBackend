class CreateDows < ActiveRecord::Migration
  def change
    create_table :dows do |t|
      t.integer :specialid
      t.string :day

      t.timestamps
    end
  end
end
