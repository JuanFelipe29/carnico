class Piece < ApplicationRecord
  delegate :name, to: :piece_name

  belongs_to :quartering
  belongs_to :piece_name
end
