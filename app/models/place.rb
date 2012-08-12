class Place < ActiveRecord::Base
  belongs_to :city
  attr_accessible :address, :complement, :district, :name, :number, :phone, :city_id
  validates :address, :district, :name, :number, :city, presence: true

  def serializable_hash(options={})
    options = {include: :city}.merge(options)
    super(options)
  end
end
