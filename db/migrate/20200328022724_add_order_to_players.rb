class AddOrderToPlayers < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :order, :integer
  end
end
