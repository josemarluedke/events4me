class Session < ActiveRecord::Base
  belongs_to :event
  attr_accessible :datetime, :price
  validates :datetime, :price, :event, presence: true
end
