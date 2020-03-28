class AddPingToGames < ActiveRecord::Migration[6.0]
  def change
    add_column :games, :ping, :string
  end
end
