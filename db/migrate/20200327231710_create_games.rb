class CreateGames < ActiveRecord::Migration[6.0]
  def change
    create_table :games do |t|
      t.string :url, null: false
      t.integer :dice_start, null: false
      t.boolean :has_started
      t.boolean :has_ended

      t.timestamps
    end
  end
end
