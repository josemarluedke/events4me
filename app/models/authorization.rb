class Authorization < ActiveRecord::Base
  belongs_to :user
  attr_accessible :provider, :uid
  validates :user, :provider, :uid, presence: true
end
