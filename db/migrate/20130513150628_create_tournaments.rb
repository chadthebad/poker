class CreateTournaments < ActiveRecord::Migration
  def change
    create_table :tournaments do |t|
      t.string :name
      t.string :location
      t.datetime :time

      t.timestamps
    end
  end
end
