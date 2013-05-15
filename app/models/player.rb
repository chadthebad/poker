class Player < ActiveRecord::Base
  attr_accessible :name, :score, :league_id, :tournament_id
  belongs_to :leagues
  has_and_belongs_to_many :tournaments

  validates_presence_of :name, :league_id
  validates_uniqueness_of :name
end
