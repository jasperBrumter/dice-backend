class CreatePlayers < ActiveRecord::Migration[6.0]
  def change
    create_table :players do |t|
      t.string :name, null: false
      t.references :game, null: false, foreign_key: true
      t.integer :number_dice

      t.timestamps
    end
  end
end
