class Organization < ActiveRecord::Base
  belongs_to :place
  attr_accessible :cnpj, :logo, :name
  validates :name, :place, presence: true
end
