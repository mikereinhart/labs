class CreatePlanets < ActiveRecord::Migration
  def change
    create_table :planets do |t|
      t.string :name
      t.string :diameter
      t.string :img_url

      t.timestamps
    end
  end
end
