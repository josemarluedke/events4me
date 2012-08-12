class Place < ActiveRecord::Base
  belongs_to :city
  attr_accessible :address, :complement, :district, :name, :number, :phone
  validates :address, :district, :name, :number, :city, presence: true
end
