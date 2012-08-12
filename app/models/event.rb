class Event < ActiveRecord::Base
  belongs_to :place
  attr_accessible :description, :duration, :image, :min_age, :name, :visible, :place_id, :place
  validates :description, :min_age, :name, :visible, :place, presence: true
end
