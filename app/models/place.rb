class Place < ActiveRecord::Base
  belongs_to :city
  has_many :events
  has_many :organizations
  attr_accessible :address, :complement, :district, :name, :number, :phone, :city_id, :city
  validates :address, :district, :name, :number, :city, presence: true

  def serializable_hash(options={})
    options = {include: :city}.merge(options)
    super(options)
  end
end
