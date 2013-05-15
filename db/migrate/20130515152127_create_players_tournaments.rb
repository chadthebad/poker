class CreatePlayersTournaments < ActiveRecord::Migration
  def up
    create_table :players_tournament, :id => false do |t|
      t.integer :player_id
      t.integer :tournament_id
    end
  end

  def down
  end
end
