class Player < ActiveRecord::Base
  attr_accessible :name, :score, :league_id, :tournament_id
  belongs_to :leagues
  has_many :tournaments, :through => :leagues

  validates_presence_of :name, :league_id
end
