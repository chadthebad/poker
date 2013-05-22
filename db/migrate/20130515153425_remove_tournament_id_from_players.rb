class RemoveTournamentIdFromPlayers < ActiveRecord::Migration
  def up
    remove_column :players, :tournament_id
  end

  def down
    add_column :players, :tournament_id, :integer
  end
end
