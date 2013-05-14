class League < ActiveRecord::Base
  attr_accessible :name
  has_many :tournaments
  has_many :players
end
