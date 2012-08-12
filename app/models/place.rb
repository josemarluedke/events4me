class Place < ActiveRecord::Base
  belongs_to :city
  attr_accessible :address, :complement, :district, :name, :number, :phone, :city_id, :city
  validates :address, :district, :name, :number, :city, presence: true
end
