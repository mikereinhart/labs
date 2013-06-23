class CreateMoons < ActiveRecord::Migration
  def change
    create_table :moons do |t|
      t.string :name
      t.string :diameter
      t.text :img_url

      t.timestamps
    end
  end
end
