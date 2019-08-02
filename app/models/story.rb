class Story < ApplicationRecord
  has_many :titles
  has_many :characters
  has_many :locations
  has_many :epoches
  has_many :inciting_incidents

  belongs_to :user
end
