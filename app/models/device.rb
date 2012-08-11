class Device < ActiveRecord::Base
  belongs_to :user
  attr_accessible :id_user, :name, :push_token, :type, :udid
  validates :name, :push_token, :udid, :user, :type, presence: true
end
