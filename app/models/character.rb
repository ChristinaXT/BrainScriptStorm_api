class Character < ApplicationRecord
  has_many :given_circumstances
  belongs_to :story
end
