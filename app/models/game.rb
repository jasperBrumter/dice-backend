class Game < ApplicationRecord
  has_many :players

  validates :url, presence: true, uniqueness: true
  validates :has_started, inclusion: { in: [true, false] }
  validates :has_ended, inclusion: { in: [true, false] }
  validates :dice_start, inclusion: { in: 1..6 }

end
