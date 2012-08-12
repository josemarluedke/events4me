class Organization < ActiveRecord::Base
  belongs_to :place
  has_and_belongs_to_many :users
  attr_accessible :cnpj, :logo, :name, :place
  validates :name, :place, presence: true
end
