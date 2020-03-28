class AddCurrentHandsToPlayer < ActiveRecord::Migration[6.0]
  def change
    add_column :players, :current_hand, :string
  end
end
