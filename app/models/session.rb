class Session < ActiveRecord::Base
  belongs_to :event
  attr_accessible :datetime, :price, :event
  validates :datetime, :price, :event, presence: true
end
