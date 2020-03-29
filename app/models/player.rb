class Player < ApplicationRecord
  belongs_to :game

  validates :name, presence: true, uniqueness: { scope: :game, message: "A player has already picked that name" }
  validates :order, uniqueness: true
  validates :current_hand, presence: true
  validates :number_dice, presence: true
end
