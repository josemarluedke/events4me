class Device < ActiveRecord::Base
  belongs_to :user
  attr_accessible :id_user, :name, :push_token, :kind, :udid
  validates :name, :push_token, :udid, :user, :kind, presence: true
end
