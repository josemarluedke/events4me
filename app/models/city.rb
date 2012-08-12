class City < ActiveRecord::Base
  belongs_to :state
  attr_accessible :name, :state
  validates :name, :state, presence: true
end
