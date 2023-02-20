class Piece < ApplicationRecord
  belongs_to :quartering
  belongs_to :piece_name
end
