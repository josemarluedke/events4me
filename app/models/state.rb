class State < ActiveRecord::Base
  attr_accessible :name, :uf
  validates :name, :uf, presence: true
end
