class AddTournamentIdToPlayers < ActiveRecord::Migration
  def change
    add_column :players, :tournament_id, :integer
  end
end
