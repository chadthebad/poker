class Tournament < ActiveRecord::Base
  attr_accessible :location, :name, :time, :league_id
  belongs_to :leagues
  has_many :players, :through => :leagues
end
