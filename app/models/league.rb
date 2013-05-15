class League < ActiveRecord::Base
  attr_accessible :name
  has_many :tournaments
  has_many :players

  validates_presence_of :name
  validates_uniqueness_of :name
end
