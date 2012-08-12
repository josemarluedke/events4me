class FeaturedEvent < ActiveRecord::Base
  belongs_to :event
  attr_accessible :end_date, :initial_date, :priority, :event
  validates :end_date, :initial_date, :priority, :event, presence: true
end
